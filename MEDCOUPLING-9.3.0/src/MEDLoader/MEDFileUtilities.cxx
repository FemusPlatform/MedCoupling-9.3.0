// Copyright (C) 2007-2019  CEA/DEN, EDF R&D
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
// Author : Anthony Geay (CEA/DEN)

#include "MEDFileUtilities.hxx"
#include "MEDFileSafeCaller.txx"
#include "MEDLoaderBase.hxx"
#include "MEDLoader.hxx"

#include "InterpKernelAutoPtr.hxx"

#include <sstream>
#include <fstream>

const char MEDCoupling::MEDFileWritableStandAlone::DFT_FILENAME_IN_MEM[]="DftFileNameInMemory";

med_access_mode MEDFileUtilities::TraduceWriteMode(int medloaderwritemode)
{
  switch(medloaderwritemode)
  {
    case 2:
      return MED_ACC_CREAT;
    case 1:
      return MED_ACC_RDEXT;
    case 0:
      return MED_ACC_RDWR;
    default:
      throw INTERP_KERNEL::Exception("Invalid write mode specified ! must be 0(write with no question), 1(append) or 2(creation)");
  }
}

const char *MEDFileUtilities::GetReadableMEDFieldType(med_field_type ft)
{
  static const char medFloat64[]="MED_FLOAT64";
  static const char medInt32[]="MED_INT32";
  static const char medInt64[]="MED_INT64";
  switch(ft)
  {
    case MED_FLOAT64:
      return medFloat64;
    case MED_INT32:
      return medInt32;
    case MED_INT64:
      return medInt64;
    default:
      throw INTERP_KERNEL::Exception("Non supported field type ! Should be FLOAT64, INT32 or INT64 !");
  }
}

void MEDFileUtilities::CheckMEDCode(int code, med_idt fid, const std::string& msg)
{
  if(code<0)
    {
      std::ostringstream oss;
      oss << "MEDFile has returned an error code (" << code <<") : " << msg;
      throw INTERP_KERNEL::Exception(oss.str().c_str());
    }
}

void MEDFileUtilities::CheckFileForRead(const std::string& fileName)
{
  int status=MEDLoaderBase::getStatusOfFile(fileName);
  std::ostringstream oss;
  oss << " File : \"" << fileName << "\"";
  switch(status)
  {
    case MEDLoaderBase::DIR_LOCKED:
      {
        oss << " has been detected as unreadable : impossible to read anything !";
        throw INTERP_KERNEL::Exception(oss.str().c_str());
      }
    case MEDLoaderBase::NOT_EXIST:
      {
        oss << " has been detected as NOT EXISTING : impossible to read anything !";
        throw INTERP_KERNEL::Exception(oss.str().c_str());
      }
    case MEDLoaderBase::EXIST_WRONLY:
      {
        oss << " has been detected as WRITE ONLY : impossible to read anything !";
        throw INTERP_KERNEL::Exception(oss.str().c_str());
      }
  }
  AutoFid fid=MEDfileOpen(fileName.c_str(),MED_ACC_RDONLY);
  if(fid<0)
    {
      oss << " has been detected as unreadable by MED file : impossible to read anything !";
      throw INTERP_KERNEL::Exception(oss.str().c_str());
    }
  oss << " has been detected readable but ";
  int major,minor,release;
  MEDfileNumVersionRd(fid,&major,&minor,&release);
  if(major<2 || (major==2 && minor<2))
    {
      oss << "version of MED file is < 2.2 : impossible to read anything !";
      throw INTERP_KERNEL::Exception(oss.str().c_str());
    }
}

MEDFileUtilities::AutoFid::AutoFid(med_idt fid):_fid(fid)
{
}

MEDFileUtilities::AutoFid::~AutoFid()
{
  MEDfileClose(_fid);
}

MEDCoupling::MEDFileWritable::MEDFileWritable():_too_long_str(0),_zipconn_pol(2)
{
}

void MEDCoupling::MEDFileWritable::copyOptionsFrom(const MEDFileWritable& other) const
{
  _too_long_str=other._too_long_str;
  _zipconn_pol=other._zipconn_pol;
}

int MEDCoupling::MEDFileWritable::getTooLongStrPolicy() const
{
  return _too_long_str;
}

void MEDCoupling::MEDFileWritable::setTooLongStrPolicy(int newVal)
{
  if(newVal!=2 && newVal!=1 && newVal!=0)
    throw INTERP_KERNEL::Exception("MEDFileWritable::setTooLongStrPolicy : invalid policy should be in 0,1 or 2 !");
  _too_long_str=newVal;
}

int MEDCoupling::MEDFileWritable::getZipConnPolicy()
{
  return _zipconn_pol;
}

void MEDCoupling::MEDFileWritable::setZipConnPolicy(int newVal)
{
  _zipconn_pol=newVal;
}

std::string MEDCoupling::MEDFileWritable::FileNameFromFID(med_idt fid)
{
  int lgth(MEDfileName(fid,0,0));
  if(lgth<=0)
    return std::string();
  INTERP_KERNEL::AutoPtr<char> tmp(new char[lgth+1]);
  if(MEDfileName(fid,tmp,lgth)<0)
    throw INTERP_KERNEL::Exception("MEDFileWritable::FileNameFromFID : Return code of MEDFile call \"MEDfileName\" is not >=0 as expected !");
  return std::string(tmp);
}

MEDFileUtilities::AutoFid MEDCoupling::OpenMEDFileForRead(const std::string& fileName)
{
  MEDFileUtilities::CheckFileForRead(fileName);
  return MEDFileUtilities::AutoFid(MEDfileOpen(fileName.c_str(),MED_ACC_RDONLY));
}

/*!
 * Writes \a this mesh into a MED file specified by its name.
 *  \param [in] fileName - the MED file name.
 *  \param [in] mode - the writing mode. For more on \a mode, see \ref AdvMEDLoaderBasics.
 * - 2 - erase; an existing file is removed.
 * - 1 - append; same data should not be present in an existing file.
 * - 0 - overwrite; same data present in an existing file is overwritten.
 *  \throw If the mesh name is not set.
 *  \throw If \a mode == 1 and the same data is present in an existing file.
 */
void MEDCoupling::MEDFileWritableStandAlone::write(const std::string& fileName, int mode) const
{
  med_access_mode medmod(MEDFileUtilities::TraduceWriteMode(mode));
  MEDFileUtilities::AutoFid fid(MEDfileOpen(fileName.c_str(),medmod));
  std::ostringstream oss; oss << "MEDFileWritableStandAlone : error on attempt to write in file : \"" << fileName << "\""; 
  MEDFileUtilities::CheckMEDCode(fid,fid,oss.str());
  writeLL(fid);
}

void MEDCoupling::MEDFileWritableStandAlone::write33(const std::string& fileName, int mode) const
{
  med_access_mode medmod(MEDFileUtilities::TraduceWriteMode(mode));
  static const unsigned char EMPTY_FILE_3_3[]={0x89,0x48,0x44,0x46,0xd,0xa,0x1a,0xa,0x0,0x0,0x0,0x0,0x0,0x8,0x8,0x0,0x4,0x0,0x10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xd0,0x7,0x0,0x0,0x0,0x0,0x0,0x0,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x60,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x88,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0xa8,0x2,0x0,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x1,0x0,0x1,0x0,0x0,0x0,0x18,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x11,0x0,0x10,0x0,0x0,0x0,0x0,0x0,0x88,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0xa8,0x2,0x0,0x0,0x0,0x0,0x0,0x0,0x54,0x52,0x45,0x45,0x0,0x0,0x1,0x0,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x88,0x6,0x0,0x0,0x0,0x0,0x0,0x0,0x8,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x48,0x45,0x41,0x50,0x0,0x0,0x0,0x0,0x58,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x18,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0xc8,0x2,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x49,0x4e,0x46,0x4f,0x53,0x5f,0x47,0x45,0x4e,0x45,0x52,0x41,0x4c,0x45,0x53,0x0,0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x40,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x54,0x52,0x45,0x45,0x0,0x0,0x0,0x0,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x88,0x6,0x0,0x0,0x0,0x0,0x0,0x0,0x8,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x48,0x45,0x41,0x50,0x0,0x0,0x0,0x0,0x58,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x8,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x60,0x5,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x50,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x4,0x0,0x1,0x0,0x0,0x0,0xc0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x11,0x0,0x10,0x0,0x0,0x0,0x0,0x0,0x20,0x3,0x0,0x0,0x0,0x0,0x0,0x0,0x40,0x5,0x0,0x0,0x0,0x0,0x0,0x0,0xc,0x0,0x30,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x4,0x0,0xc,0x0,0x8,0x0,0x4d,0x41,0x4a,0x0,0x0,0x0,0x0,0x0,0x10,0x8,0x0,0x0,0x4,0x0,0x0,0x0,0x0,0x0,0x20,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x3,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0xc,0x0,0x30,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x4,0x0,0xc,0x0,0x8,0x0,0x4d,0x49,0x4e,0x0,0x0,0x0,0x0,0x0,0x10,0x8,0x0,0x0,0x4,0x0,0x0,0x0,0x0,0x0,0x20,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x3,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0xc,0x0,0x30,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x4,0x0,0xc,0x0,0x8,0x0,0x52,0x45,0x4c,0x0,0x0,0x0,0x0,0x0,0x10,0x8,0x0,0x0,0x4,0x0,0x0,0x0,0x0,0x0,0x20,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x53,0x4e,0x4f,0x44,0x1,0x0,0x1,0x0,0x8,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0xb8,0x5,0x0,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x20,0x3,0x0,0x0,0x0,0x0,0x0,0x0,0x40,0x5,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0};
#if MED_NUM_MAJEUR>3
  med_bool fileexist,accessok;
  MEDFILESAFECALLERRD0(MEDfileExist,(fileName.c_str(),medmod,&fileexist,&accessok));
  if(!accessok)
    {
      std::ostringstream oss; oss << "MEDFileWritableStandAlone::write33 : requested access to file \"" << fileName << "\" !";
      throw INTERP_KERNEL::Exception(oss.str());
    }
  if(medmod==MED_ACC_CREAT || !fileexist)
    {
      std::ofstream ofs(fileName);
      ofs.write(reinterpret_cast<const char *>(EMPTY_FILE_3_3),sizeof(EMPTY_FILE_3_3));
      medmod=MEDFileUtilities::TraduceWriteMode(0);
    }
  MEDFileUtilities::AutoFid fid(MEDfileVersionOpen(fileName.c_str(),medmod,3,3,1));
  writeLL(fid);
#else
  std::ostringstream oss; oss << "MEDFileWritableStandAlone::write33 : is implemented with MEDFile " << MEDFileVersionStr() << " ! If you need this feature please use version >= 3.2.1.";
  throw INTERP_KERNEL::Exception(oss.str());
#endif
}

MEDCoupling::MCAuto<MEDCoupling::DataArrayByte> MEDCoupling::MEDFileWritableStandAlone::serialize() const
{
  med_memfile memfile=MED_MEMFILE_INIT;
  memfile.app_image_ptr=0;
  memfile.app_image_size=0;
  //
  std::string dftFileName(GenerateUniqueDftFileNameInMem());
  {// very important to let this braces ! The AutoFid destructor must be called, to have a "clean" memfile.app_image_ptr pointer embedded in the returned object.
    MEDFileUtilities::AutoFid fid(MEDmemFileOpen(dftFileName.c_str(),&memfile,MED_FALSE,MED_ACC_CREAT));
    writeLL(fid);
  }
  //
  MEDCoupling::MCAuto<MEDCoupling::DataArrayByte> ret(MEDCoupling::DataArrayByte::New());
  ret->useArray(reinterpret_cast<char *>(memfile.app_image_ptr),true,DeallocType::C_DEALLOC,memfile.app_image_size,1);
  return ret;
}

std::string MEDCoupling::MEDFileWritableStandAlone::GenerateUniqueDftFileNameInMem()
{
  static int ii=0;
  std::ostringstream oss; oss << DFT_FILENAME_IN_MEM << "_" << ii++;
  return oss.str();
}
