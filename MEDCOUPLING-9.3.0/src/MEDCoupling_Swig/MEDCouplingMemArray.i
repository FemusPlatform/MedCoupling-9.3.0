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
// Author : Anthony Geay (EDF R&D)

////////////////////
%typemap(out) MEDCoupling::DataArray*
{
  $result=convertDataArray($1,$owner);
}

%typemap(out) DataArray*
{
  $result=convertDataArray($1,$owner);
}
//$$$$$$$$$$$$$$$$$$

////////////////////
%typemap(out) MEDCoupling::DataArrayChar*
{
  $result=convertDataArrayChar($1,$owner);
}

%typemap(out) DataArrayChar*
{
  $result=convertDataArrayChar($1,$owner);
}

%typemap(out) MCAuto<MEDCoupling::DataArrayInt>
{
  $result=SWIG_NewPointerObj(SWIG_as_voidptr($1.retn()),SWIGTYPE_p_MEDCoupling__DataArrayInt,SWIG_POINTER_OWN|0);
}

%typemap(out) MCAuto<MEDCoupling::DataArrayDouble>
{
  $result=SWIG_NewPointerObj(SWIG_as_voidptr($1.retn()),SWIGTYPE_p_MEDCoupling__DataArrayDouble,SWIG_POINTER_OWN|0);
}

%typemap(out) MCAuto<MEDCoupling::DataArrayFloat>
{
  $result=SWIG_NewPointerObj(SWIG_as_voidptr($1.retn()),SWIGTYPE_p_MEDCoupling__DataArrayFloat,SWIG_POINTER_OWN|0);
}

%typemap(out) MCAuto<MEDCoupling::MapII>
{
  $result=SWIG_NewPointerObj(SWIG_as_voidptr($1.retn()),SWIGTYPE_p_MEDCoupling__MapII,SWIG_POINTER_OWN|0);
}
//$$$$$$$$$$$$$$$$$$

%newobject MEDCoupling::DataArray::deepCopy;
%newobject MEDCoupling::DataArray::buildNewEmptyInstance;
%newobject MEDCoupling::DataArray::selectByTupleRanges;
%newobject MEDCoupling::DataArray::selectByTupleId;
%newobject MEDCoupling::DataArray::selectByTupleIdSafe;
%newobject MEDCoupling::DataArray::selectByTupleIdSafeSlice;
%newobject MEDCoupling::DataArray::Aggregate;
%newobject MEDCoupling::DataArrayFloat::New;
%newobject MEDCoupling::DataArrayFloat::iterator;
%newobject MEDCoupling::DataArrayFloat::__iter__;
%newobject MEDCoupling::DataArrayFloat::Meld;
%newobject MEDCoupling::DataArrayFloat::__rmul__;
%newobject MEDCoupling::DataArrayInt::New;
%newobject MEDCoupling::DataArrayInt::__iter__;
%newobject MEDCoupling::DataArrayInt::performCopyOrIncrRef;
%newobject MEDCoupling::DataArrayInt::subArray;
%newobject MEDCoupling::DataArrayInt::changeNbOfComponents;
%newobject MEDCoupling::DataArrayInt::accumulatePerChunck;
%newobject MEDCoupling::DataArrayInt::checkAndPreparePermutation;
%newobject MEDCoupling::DataArrayInt::transformWithIndArrR;
%newobject MEDCoupling::DataArrayInt::renumber;
%newobject MEDCoupling::DataArrayInt::renumberR;
%newobject MEDCoupling::DataArrayInt::renumberAndReduce;
%newobject MEDCoupling::DataArrayInt::invertArrayO2N2N2O;
%newobject MEDCoupling::DataArrayInt::invertArrayN2O2O2N;
%newobject MEDCoupling::DataArrayInt::invertArrayO2N2N2OBis;
%newobject MEDCoupling::DataArrayInt::findIdsEqual;
%newobject MEDCoupling::DataArrayInt::findIdsNotEqual;
%newobject MEDCoupling::DataArrayInt::findIdsEqualList;
%newobject MEDCoupling::DataArrayInt::findIdsNotEqualList;
%newobject MEDCoupling::DataArrayInt::findIdsEqualTuple;
%newobject MEDCoupling::DataArrayInt::findIdForEach;
%newobject MEDCoupling::DataArrayInt::sumPerTuple;
%newobject MEDCoupling::DataArrayInt::negate;
%newobject MEDCoupling::DataArrayInt::computeAbs;
%newobject MEDCoupling::DataArrayInt::findIdsInRange;
%newobject MEDCoupling::DataArrayInt::findIdsNotInRange;
%newobject MEDCoupling::DataArrayInt::findIdsStrictlyNegative;
%newobject MEDCoupling::DataArrayInt::Aggregate;
%newobject MEDCoupling::DataArrayInt::AggregateIndexes;
%newobject MEDCoupling::DataArrayInt::Meld;
%newobject MEDCoupling::DataArrayInt::Add;
%newobject MEDCoupling::DataArrayInt::Substract;
%newobject MEDCoupling::DataArrayInt::Multiply;
%newobject MEDCoupling::DataArrayInt::Divide;
%newobject MEDCoupling::DataArrayInt::Pow;
%newobject MEDCoupling::DataArrayInt::BuildUnion;
%newobject MEDCoupling::DataArrayInt::BuildIntersection;
%newobject MEDCoupling::DataArrayInt::Range;
%newobject MEDCoupling::DataArrayInt::indicesOfSubPart;
%newobject MEDCoupling::DataArrayInt::fromNoInterlace;
%newobject MEDCoupling::DataArrayInt::toNoInterlace;
%newobject MEDCoupling::DataArrayInt::buildComplement;
%newobject MEDCoupling::DataArrayInt::buildUnion;
%newobject MEDCoupling::DataArrayInt::buildSubstraction;
%newobject MEDCoupling::DataArrayInt::buildSubstractionOptimized;
%newobject MEDCoupling::DataArrayInt::buildIntersection;
%newobject MEDCoupling::DataArrayInt::buildUnique;
%newobject MEDCoupling::DataArrayInt::buildUniqueNotSorted;
%newobject MEDCoupling::DataArrayInt::deltaShiftIndex;
%newobject MEDCoupling::DataArrayInt::buildExplicitArrByRanges;
%newobject MEDCoupling::DataArrayInt::buildExplicitArrOfSliceOnScaledArr;
%newobject MEDCoupling::DataArrayInt::findRangeIdForEachTuple;
%newobject MEDCoupling::DataArrayInt::findIdInRangeForEachTuple;
%newobject MEDCoupling::DataArrayInt::duplicateEachTupleNTimes;
%newobject MEDCoupling::DataArrayInt::buildPermutationArr;
%newobject MEDCoupling::DataArrayInt::buildPermArrPerLevel;
%newobject MEDCoupling::DataArrayInt::getDifferentValues;
%newobject MEDCoupling::DataArrayInt::FindPermutationFromFirstToSecond;
%newobject MEDCoupling::DataArrayInt::CheckAndPreparePermutation;
%newobject MEDCoupling::DataArrayInt::__neg__;
%newobject MEDCoupling::DataArrayInt::__add__;
%newobject MEDCoupling::DataArrayInt::__radd__;
%newobject MEDCoupling::DataArrayInt::__sub__;
%newobject MEDCoupling::DataArrayInt::__rsub__;
%newobject MEDCoupling::DataArrayInt::__mul__;
%newobject MEDCoupling::DataArrayInt::__rmul__;
%newobject MEDCoupling::DataArrayInt::__div__;
%newobject MEDCoupling::DataArrayInt::__rdiv__;
%newobject MEDCoupling::DataArrayInt::__mod__;
%newobject MEDCoupling::DataArrayInt::__rmod__;
%newobject MEDCoupling::DataArrayInt::__pow__;
%newobject MEDCoupling::DataArrayInt::__rpow__;
%newobject MEDCoupling::DataArrayIntTuple::buildDAInt;
%newobject MEDCoupling::DataArrayChar::convertToIntArr;
%newobject MEDCoupling::DataArrayChar::renumber;
%newobject MEDCoupling::DataArrayChar::renumberR;
%newobject MEDCoupling::DataArrayChar::renumberAndReduce;
%newobject MEDCoupling::DataArrayChar::changeNbOfComponents;
%newobject MEDCoupling::DataArrayChar::findIdsEqual;
%newobject MEDCoupling::DataArrayChar::findIdsNotEqual;
%newobject MEDCoupling::DataArrayChar::Aggregate;
%newobject MEDCoupling::DataArrayChar::Meld;
%newobject MEDCoupling::DataArrayByte::New;
%newobject MEDCoupling::DataArrayByte::__iter__;
%newobject MEDCoupling::DataArrayByte::performCopyOrIncrRef;
%newobject MEDCoupling::DataArrayByteTuple::buildDAByte;
%newobject MEDCoupling::DataArrayChar::subArray;
%newobject MEDCoupling::DataArrayAsciiChar::New;
%newobject MEDCoupling::DataArrayAsciiChar::__iter__;
%newobject MEDCoupling::DataArrayAsciiChar::performCopyOrIncrRef;
%newobject MEDCoupling::DataArrayAsciiCharTuple::buildDAAsciiChar;
%newobject MEDCoupling::DataArrayDouble::New;
%newobject MEDCoupling::DataArrayDouble::__iter__;
%newobject MEDCoupling::DataArrayDouble::performCopyOrIncrRef;
%newobject MEDCoupling::DataArrayDouble::Aggregate;
%newobject MEDCoupling::DataArrayDouble::Meld;
%newobject MEDCoupling::DataArrayDouble::Dot;
%newobject MEDCoupling::DataArrayDouble::CrossProduct;
%newobject MEDCoupling::DataArrayDouble::Add;
%newobject MEDCoupling::DataArrayDouble::Substract;
%newobject MEDCoupling::DataArrayDouble::Multiply;
%newobject MEDCoupling::DataArrayDouble::Divide;
%newobject MEDCoupling::DataArrayDouble::Pow;
%newobject MEDCoupling::DataArrayDouble::symmetry3DPlane;
%newobject MEDCoupling::DataArrayDouble::subArray;
%newobject MEDCoupling::DataArrayDouble::changeNbOfComponents;
%newobject MEDCoupling::DataArrayDouble::accumulatePerChunck;
%newobject MEDCoupling::DataArrayDouble::findIdsInRange;
%newobject MEDCoupling::DataArrayDouble::findIdsNotInRange;
%newobject MEDCoupling::DataArrayDouble::findIdsStrictlyNegative;
%newobject MEDCoupling::DataArrayDouble::negate;
%newobject MEDCoupling::DataArrayDouble::computeAbs;
%newobject MEDCoupling::DataArrayDouble::applyFunc;
%newobject MEDCoupling::DataArrayDouble::applyFuncCompo;
%newobject MEDCoupling::DataArrayDouble::applyFuncNamedCompo;
%newobject MEDCoupling::DataArrayDouble::doublyContractedProduct;
%newobject MEDCoupling::DataArrayDouble::determinant;
%newobject MEDCoupling::DataArrayDouble::eigenValues;
%newobject MEDCoupling::DataArrayDouble::eigenVectors;
%newobject MEDCoupling::DataArrayDouble::inverse;
%newobject MEDCoupling::DataArrayDouble::trace;
%newobject MEDCoupling::DataArrayDouble::deviator;
%newobject MEDCoupling::DataArrayDouble::magnitude;
%newobject MEDCoupling::DataArrayDouble::maxPerTuple;
%newobject MEDCoupling::DataArrayDouble::sumPerTuple;
%newobject MEDCoupling::DataArrayDouble::computeBBoxPerTuple;
%newobject MEDCoupling::DataArrayDouble::buildEuclidianDistanceDenseMatrix;
%newobject MEDCoupling::DataArrayDouble::buildEuclidianDistanceDenseMatrixWith;
%newobject MEDCoupling::DataArrayDouble::renumber;
%newobject MEDCoupling::DataArrayDouble::renumberR;
%newobject MEDCoupling::DataArrayDouble::renumberAndReduce;
%newobject MEDCoupling::DataArrayDouble::fromNoInterlace;
%newobject MEDCoupling::DataArrayDouble::toNoInterlace;
%newobject MEDCoupling::DataArrayDouble::fromPolarToCart;
%newobject MEDCoupling::DataArrayDouble::fromCylToCart;
%newobject MEDCoupling::DataArrayDouble::fromSpherToCart;
%newobject MEDCoupling::DataArrayDouble::fromCartToPolar;
%newobject MEDCoupling::DataArrayDouble::fromCartToCyl;
%newobject MEDCoupling::DataArrayDouble::fromCartToSpher;
%newobject MEDCoupling::DataArrayDouble::fromCartToCylGiven;
%newobject MEDCoupling::DataArrayDouble::cartesianize;
%newobject MEDCoupling::DataArrayDouble::getDifferentValues;
%newobject MEDCoupling::DataArrayDouble::findClosestTupleId;
%newobject MEDCoupling::DataArrayDouble::computeNbOfInteractionsWith;
%newobject MEDCoupling::DataArrayDouble::duplicateEachTupleNTimes;
%newobject MEDCoupling::DataArrayDouble::__neg__;
%newobject MEDCoupling::DataArrayDouble::__radd__;
%newobject MEDCoupling::DataArrayDouble::__rsub__;
%newobject MEDCoupling::DataArrayDouble::__rmul__;
%newobject MEDCoupling::DataArrayDouble::__rdiv__;
%newobject MEDCoupling::DataArrayDouble::__pow__;
%newobject MEDCoupling::DataArrayDouble::__rpow__;
%newobject MEDCoupling::DataArrayDoubleTuple::buildDADouble;

%newobject MEDCoupling::PartDefinition::New;
%newobject MEDCoupling::PartDefinition::toDAI;
%newobject MEDCoupling::PartDefinition::__add__;
%newobject MEDCoupling::PartDefinition::composeWith;
%newobject MEDCoupling::PartDefinition::tryToSimplify;
%newobject MEDCoupling::DataArrayPartDefinition::New;
%newobject MEDCoupling::SlicePartDefinition::New;


%feature("unref") DataArray "$this->decrRef();"
%feature("unref") DataArrayDouble "$this->decrRef();"
%feature("unref") DataArrayInt "$this->decrRef();"
%feature("unref") DataArrayChar "$this->decrRef();"
%feature("unref") DataArrayAsciiChar "$this->decrRef();"
%feature("unref") DataArrayByte "$this->decrRef();"

%feature("unref") MapII "$this->decrRef();"
%feature("unref") PartDefinition "$this->decrRef();"
%feature("unref") DataArrayPartDefinition "$this->decrRef();"
%feature("unref") SlicePartDefinition "$this->decrRef();"

namespace MEDCoupling
{
  typedef enum
    {
      AX_CART = 3,
      AX_CYL = 4,
      AX_SPHER = 5
    } MEDCouplingAxisType;

  class DataArrayInt;

  class MapII : public RefCountObject, public TimeLabel
  {
  public:
    static MCAuto< MapII > New();
  };
  
  class PartDefinition : public RefCountObject, public TimeLabel
  {
  public:
    static PartDefinition *New(int start, int stop, int step);
    static PartDefinition *New(DataArrayInt *listOfIds);
    virtual DataArrayInt *toDAI() const;
    virtual int getNumberOfElems() const;
    virtual std::string getRepr() const;
    virtual PartDefinition *composeWith(const PartDefinition *other) const;
    virtual void checkConsistencyLight() const;
    virtual PartDefinition *tryToSimplify() const;
    %extend
    {
      virtual PartDefinition *__add__(const PartDefinition& other) const
      {
        return (*self)+other;
      }

      virtual PyObject *isEqual(const PartDefinition *other) const
      {
        std::string ret1;
        bool ret0(self->isEqual(other,ret1));
        PyObject *ret=PyTuple_New(2);
        PyObject *ret0Py=ret0?Py_True:Py_False;
        Py_XINCREF(ret0Py);
        PyTuple_SetItem(ret,0,ret0Py);
        PyTuple_SetItem(ret,1,PyString_FromString(ret1.c_str()));
        return ret;
      }

      virtual PyObject *deepCopy() const
      {
        return convertPartDefinition(self->deepCopy(),SWIG_POINTER_OWN | 0);
      }
    }
  protected:
    virtual ~PartDefinition();
  };

  class DataArrayPartDefinition : public PartDefinition
  {
  public:
    static DataArrayPartDefinition *New(DataArrayInt *listOfIds);
    %extend
    {
      DataArrayPartDefinition(DataArrayInt *listOfIds)
      {
        return DataArrayPartDefinition::New(listOfIds);
      }

      std::string __str__() const
      {
        return self->getRepr();
      }
      
      std::string __repr__() const
      {
        std::ostringstream oss; oss << "DataArrayPartDefinition C++ instance at " << self << "." << std::endl;
        oss << self->getRepr();
        return oss.str();
      }
    }
  protected:
    virtual ~DataArrayPartDefinition();
  };

  class SlicePartDefinition : public PartDefinition
  {
  public:
    static SlicePartDefinition *New(int start, int stop, int step);
    int getEffectiveStop() const;
    %extend
    {
      SlicePartDefinition(int start, int stop, int step)
      {
        return SlicePartDefinition::New(start,stop,step);
      }

      PyObject *getSlice() const
      {
        int a,b,c;
        self->getSlice(a,b,c);
        return PySlice_New(PyInt_FromLong(a),PyInt_FromLong(b),PyInt_FromLong(c));
      }
      
      std::string __str__() const
      {
        return self->getRepr();
      }
      
      std::string __repr__() const
      {
        std::ostringstream oss; oss << "SlicePartDefinition C++ instance at " << self << "." << std::endl;
        oss << self->getRepr();
        return oss.str();
      }
    }
  protected:
    virtual ~SlicePartDefinition();
  };
  
  class DataArray : public RefCountObject, public TimeLabel
  {
  public:
    void setName(const std::string& name);
    void copyStringInfoFrom(const DataArray& other);
    void copyPartOfStringInfoFrom(const DataArray& other, const std::vector<int>& compoIds);
    void copyPartOfStringInfoFrom2(const std::vector<int>& compoIds, const DataArray& other);
    bool areInfoEqualsIfNotWhy(const DataArray& other, std::string& reason) const;
    bool areInfoEquals(const DataArray& other) const;
    std::string cppRepr(const std::string& varName) const;
    std::string getName() const;
    void setInfoOnComponents(const std::vector<std::string>& info);
    void setInfoAndChangeNbOfCompo(const std::vector<std::string>& info);
    std::vector<std::string> getVarsOnComponent() const;
    std::vector<std::string> getUnitsOnComponent() const;
    std::string getInfoOnComponent(int i) const;
    std::string getVarOnComponent(int i) const;
    std::string getUnitOnComponent(int i) const;
    void setInfoOnComponent(int i, const std::string& info);
    int getNumberOfComponents() const;
    virtual void alloc(int nbOfTuple, int nbOfCompo=1);
    virtual void reAlloc(int nbOfTuples);
    virtual bool isAllocated() const;
    virtual void checkAllocated() const;
    virtual void desallocate();
    virtual int getNumberOfTuples() const;
    virtual std::size_t getNbOfElems() const;
    virtual std::size_t getNbOfElemAllocated() const;
    virtual DataArray *deepCopy() const;
    virtual DataArray *buildNewEmptyInstance() const;
    virtual DataArray *selectByTupleIdSafeSlice(int bg, int end2, int step) const;
    virtual void rearrange(int newNbOfCompo);
    virtual void circularPermutation(int nbOfShift=1);
    virtual void circularPermutationPerTuple(int nbOfShift=1);
    virtual void reversePerTuple();
    void checkNbOfTuples(int nbOfTuples, const std::string& msg) const;
    void checkNbOfComps(int nbOfCompo, const std::string& msg) const;
    void checkNbOfTuplesAndComp(const DataArray& other, const std::string& msg) const;
    void checkNbOfTuplesAndComp(int nbOfTuples, int nbOfCompo, const std::string& msg) const;
    void checkNbOfElems(std::size_t nbOfElems, const std::string& msg) const;
    static int GetNumberOfItemGivenBES(int begin, int end, int step, const std::string& msg);
    static int GetNumberOfItemGivenBESRelative(int begin, int end, int step, const std::string& msg);
    static int GetPosOfItemGivenBESRelativeNoThrow(int value, int begin, int end, int step);
    static std::string GetVarNameFromInfo(const std::string& info);
    static std::string GetUnitFromInfo(const std::string& info);
    static std::string BuildInfoFromVarAndUnit(const std::string& var, const std::string& unit);
    static std::string GetAxisTypeRepr(MEDCouplingAxisType at);
    void updateTime() const;
    %extend
    {
      PyObject *getInfoOnComponents() const
      {
        const std::vector<std::string>& comps=self->getInfoOnComponents();
        PyObject *ret=PyList_New((int)comps.size());
        for(int i=0;i<(int)comps.size();i++)
          PyList_SetItem(ret,i,PyString_FromString(comps[i].c_str()));
        return ret;
      }
      
      void copyPartOfStringInfoFrom(const DataArray& other, PyObject *li)
      {
        std::vector<int> tmp;
        convertPyToNewIntArr3(li,tmp);
        self->copyPartOfStringInfoFrom(other,tmp);
      }

      void copyPartOfStringInfoFrom2(PyObject *li, const DataArray& other)
      {
        std::vector<int> tmp;
        convertPyToNewIntArr3(li,tmp);
        self->copyPartOfStringInfoFrom2(tmp,other);
      }

      virtual void renumberInPlace(PyObject *li)
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            self->renumberInPlace(tmp);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            int size=self->getNumberOfTuples();
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            self->renumberInPlace(da2->getConstPointer());
          }
      }

      virtual void renumberInPlaceR(PyObject *li)
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            self->renumberInPlaceR(tmp);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            int size=self->getNumberOfTuples();
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            self->renumberInPlaceR(da2->getConstPointer());
          }
      }

      //tuplesSelec in PyObject * because DataArrayInt is not already existing !
      virtual void setContigPartOfSelectedValues(int tupleIdStart, PyObject *aBase, PyObject *tuplesSelec)
      {
        static const char msg[]="DataArray::setContigPartOfSelectedValuesSlice : 4th parameter \"tuplesSelec\" should be of type DataArrayInt";
          DataArray *a=CheckAndRetrieveDataArrayInstance(aBase,"DataArray::setContigPartOfSelectedValuesSlice : 3rd parameter \"aBase\" should be of type DataArray");
        DataArray *tuplesSelecPtr=CheckAndRetrieveDataArrayInstance(tuplesSelec,msg);
        DataArrayInt *tuplesSelecPtr2=0;
        if(tuplesSelecPtr)
          {
            tuplesSelecPtr2=dynamic_cast<DataArrayInt *>(tuplesSelecPtr);
            if(!tuplesSelecPtr2)
              throw INTERP_KERNEL::Exception(msg);
          }
        self->setContigPartOfSelectedValues(tupleIdStart,a,tuplesSelecPtr2);
      }
      
      virtual void setContigPartOfSelectedValuesSlice(int tupleIdStart, PyObject *aBase, int bg, int end2, int step)
      {
        DataArray *a=CheckAndRetrieveDataArrayInstance(aBase,"DataArray::setContigPartOfSelectedValuesSlice : 2nd parameter \"aBase\" should be of type DataArray");
        self->setContigPartOfSelectedValuesSlice(tupleIdStart,a,bg,end2,step);
      }

      virtual DataArray *selectByTupleRanges(PyObject *li) const
      {
        std::vector<std::pair<int,int> > ranges;
        convertPyToVectorPairInt(li,ranges);
        return self->selectByTupleRanges(ranges);
      }

      virtual DataArray *selectByTupleId(PyObject *li) const
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            return self->selectByTupleId(tmp,tmp+size);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            return self->selectByTupleId(da2->getConstPointer(),da2->getConstPointer()+da2->getNbOfElems());
          }
      }

      virtual DataArray *selectByTupleIdSafe(PyObject *li) const
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            return self->selectByTupleIdSafe(tmp,tmp+size);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            return self->selectByTupleIdSafe(da2->getConstPointer(),da2->getConstPointer()+da2->getNbOfElems());
          }
      }

      virtual PyObject *keepSelectedComponents(PyObject *li) const
      {
        std::vector<int> tmp;
        convertPyToNewIntArr3(li,tmp);
        DataArray *ret=self->keepSelectedComponents(tmp);
        return convertDataArray(ret,SWIG_POINTER_OWN | 0 );
      }

      static PyObject *GetSlice(PyObject *slic, int sliceId, int nbOfSlices)
      {
        if(!PySlice_Check(slic))
          throw INTERP_KERNEL::Exception("DataArray::GetSlice (wrap) : expecting a pyslice as second (first) parameter !");
        Py_ssize_t strt=2,stp=2,step=2;
        GetIndicesOfSliceExplicitely(slic,&strt,&stp,&step,"DataArray::GetSlice (wrap) : the input slice is invalid !");
        int a,b;
        DataArray::GetSlice(strt,stp,step,sliceId,nbOfSlices,a,b);
        return PySlice_New(PyInt_FromLong(a),PyInt_FromLong(b),PyInt_FromLong(step));
      }

      PyObject *getSlice(PyObject *slic, int sliceId, int nbOfSlices) const
      {
        if(!PySlice_Check(slic))
          throw INTERP_KERNEL::Exception("DataArray::getSlice (wrap) : expecting a pyslice as second (first) parameter !");
        Py_ssize_t strt=2,stp=2,step=2;
        GetIndicesOfSlice(slic,self->getNumberOfTuples(),&strt,&stp,&step,"DataArray::getSlice (wrap) : the input slice is invalid !");
        int a,b;
        DataArray::GetSlice(strt,stp,step,sliceId,nbOfSlices,a,b);
        return PySlice_New(PyInt_FromLong(a),PyInt_FromLong(b),PyInt_FromLong(step));
      }

      static int GetNumberOfItemGivenBES(PyObject *slic)
      {
        if(!PySlice_Check(slic))
          throw INTERP_KERNEL::Exception("DataArray::GetNumberOfItemGivenBES (wrap) : expecting a pyslice as second (first) parameter !");
        Py_ssize_t strt=2,stp=2,step=2;
        GetIndicesOfSliceExplicitely(slic,&strt,&stp,&step,"DataArray::GetNumberOfItemGivenBES (wrap) : the input slice is invalid !");
        return DataArray::GetNumberOfItemGivenBES(strt,stp,step,"");
      }

      static int GetNumberOfItemGivenBESRelative(PyObject *slic)
      {
        if(!PySlice_Check(slic))
          throw INTERP_KERNEL::Exception("DataArray::GetNumberOfItemGivenBESRelative (wrap) : expecting a pyslice as second (first) parameter !");
        Py_ssize_t strt=2,stp=2,step=2;
        GetIndicesOfSliceExplicitely(slic,&strt,&stp,&step,"DataArray::GetNumberOfItemGivenBESRelative (wrap) : the input slice is invalid !");
        return DataArray::GetNumberOfItemGivenBESRelative(strt,stp,step,"");
      }
      
      static DataArray *Aggregate(PyObject *arrs)
      {
        std::vector<const DataArray *> tmp;
        convertFromPyObjVectorOfObj<const MEDCoupling::DataArray *>(arrs,SWIGTYPE_p_MEDCoupling__DataArray,"DataArray",tmp);
        return DataArray::Aggregate(tmp);
      }

      int getNumberOfItemGivenBES(PyObject *slic) const
      {
        if(!PySlice_Check(slic))
          throw INTERP_KERNEL::Exception("DataArray::getNumberOfItemGivenBES (wrap) : expecting a pyslice as second (first) parameter !");
        Py_ssize_t strt=2,stp=2,step=2;
        GetIndicesOfSlice(slic,self->getNumberOfTuples(),&strt,&stp,&step,"DataArray::getNumberOfItemGivenBES (wrap) : the input slice is invalid !");
        return DataArray::GetNumberOfItemGivenBES(strt,stp,step,"");
      }

      int getNumberOfItemGivenBESRelative(PyObject *slic)
      {
        if(!PySlice_Check(slic))
          throw INTERP_KERNEL::Exception("DataArray::getNumberOfItemGivenBESRelative (wrap) : expecting a pyslice as second (first) parameter !");
        Py_ssize_t strt=2,stp=2,step=2;
        GetIndicesOfSlice(slic,self->getNumberOfTuples(),&strt,&stp,&step,"DataArray::getNumberOfItemGivenBESRelative (wrap) : the input slice is invalid !");
        return DataArray::GetNumberOfItemGivenBESRelative(strt,stp,step,"");
      }

      PyObject *__getstate__() const
      {
        PyObject *ret(PyTuple_New(2));
        std::string a0(self->getName());
        const std::vector<std::string> &a1(self->getInfoOnComponents());
        PyTuple_SetItem(ret,0,PyString_FromString(a0.c_str()));
        //
        int sz(a1.size());
        PyObject *ret1(PyList_New(sz));
        for(int i=0;i<sz;i++)
          PyList_SetItem(ret1,i,PyString_FromString(a1[i].c_str()));
        PyTuple_SetItem(ret,1,ret1);
        //
        return ret;
      }

      void __setstate__(PyObject *inp)
      {
        static const char MSG[]="DataArrayDouble.__setstate__ : expected input is a tuple of size 2 with string as 1st arg and list of string as 2nd arg !";
        if(!PyTuple_Check(inp))
          throw INTERP_KERNEL::Exception("DataArrayDouble.__setstate__ : invalid input ! Invalid overwrite of __getstate__ ?");
        int sz(PyTuple_Size(inp));
        if(sz!=2)
          throw INTERP_KERNEL::Exception("DataArrayDouble.__setstate__ : invalid tuple in input ! Should be of size 2 ! Invalid overwrite of __getstate__ ?");
        PyObject *a0(PyTuple_GetItem(inp,0));
        self->setName(convertPyObjectToStr(a0,MSG));
        PyObject *a1(PyTuple_GetItem(inp,1));
        std::vector<std::string> a1cpp;
        if(!fillStringVector(a1,a1cpp))
          throw INTERP_KERNEL::Exception(MSG);
        self->setInfoOnComponents(a1cpp);
      }
    }
  };

  class DataArrayDouble;

  class DataArrayFloat : public DataArray
  {
  public:
    static DataArrayFloat *New();
    void fillWithValue(float val);
    bool isEqual(const DataArrayFloat& other, float prec) const;
    bool isEqualWithoutConsideringStr(const DataArrayFloat& other, float prec) const;
    bool isUniform(float val, float eps) const;
    void pushBackSilent(float val);
    void iota(float init=0.);
    DataArrayFloatIterator *iterator();
    MCAuto<DataArrayDouble> convertToDblArr() const;
    static DataArrayFloat *Meld(const DataArrayFloat *a1, const DataArrayFloat *a2);
    %extend
    {
      DataArrayFloat()
      {
        return DataArrayFloat::New();
      }

      static DataArrayFloat *New(PyObject *elt0, PyObject *nbOfTuples=0, PyObject *elt2=0)
      {
        return DataArrayT_New<float>(elt0,nbOfTuples,elt2);
      }
   
      DataArrayFloat(PyObject *elt0, PyObject *nbOfTuples=0, PyObject *elt2=0)
      {
        return MEDCoupling_DataArrayFloat_New__SWIG_1(elt0,nbOfTuples,elt2);
      }

      DataArrayFloatIterator *__iter__()
      {
        return self->iterator();
      }

      std::string __repr__() const
      {
        std::ostringstream oss;
        self->reprQuickOverview(oss);
        return oss.str();
      }

      std::string __str__() const
      {
        return self->reprNotTooLong();
      }

      int __len__() const
      {
        if(self->isAllocated())
          {
            return self->getNumberOfTuples();
          }
        else
          {
            throw INTERP_KERNEL::Exception("DataArrayFloat::__len__ : Instance is NOT allocated !");
          }
      }

      PyObject *getValues() const
      {
        const float *vals(self->begin());
        return convertDblArrToPyList<float>(vals,self->getNbOfElems());
      }

      PyObject *getValuesAsTuple() const
      {
        const float *vals(self->begin());
        int nbOfComp(self->getNumberOfComponents()),nbOfTuples(self->getNumberOfTuples());
        return convertDblArrToPyListOfTuple<float>(vals,nbOfComp,nbOfTuples);
      }

      PyObject *isEqualIfNotWhy(const DataArrayFloat& other, float prec) const
      {
        std::string ret1;
        bool ret0=self->isEqualIfNotWhy(other,prec,ret1);
        PyObject *ret=PyTuple_New(2);
        PyObject *ret0Py=ret0?Py_True:Py_False;
        Py_XINCREF(ret0Py);
        PyTuple_SetItem(ret,0,ret0Py);
        PyTuple_SetItem(ret,1,PyString_FromString(ret1.c_str()));
        return ret;
      }
      
      PyObject *__getitem__(PyObject *obj)
      {
        return DataArrayT__getitem<float>(self,obj);
      }

      DataArrayFloat *__setitem__(PyObject *obj, PyObject *value)
      {
        return DataArrayT__setitem__<float>(self,obj,value);
      }
      
      PyObject *___iadd___(PyObject *trueSelf, PyObject *obj)
      {
        return DataArrayT_iadd<float>(trueSelf,obj,self);
      }

      PyObject *___isub___(PyObject *trueSelf, PyObject *obj)
      {
        return DataArrayT_isub<float>(trueSelf,obj,self);
      }

      PyObject *___imul___(PyObject *trueSelf, PyObject *obj)
      {
        return DataArrayT_imul<float>(trueSelf,obj,self);
      }

      DataArrayFloat *__rmul__(PyObject *obj)
      {
        return DataArrayFPT_rmul<float>(self,obj);
      }

      PyObject *___idiv___(PyObject *trueSelf, PyObject *obj)
      {
        return DataArrayT_idiv<float>(trueSelf,obj,self);
      }
      
#ifdef WITH_NUMPY
      PyObject *toNumPyArray() // not const. It is not a bug !
      {
        return ToNumPyArray<DataArrayFloat,float>(self,NPY_FLOAT,"DataArrayFloat");
      }
#endif
    }
  };

  class DataArrayFloatTuple;

  class DataArrayFloatIterator
  {
  public:
    DataArrayFloatIterator(DataArrayFloat *da);
    ~DataArrayFloatIterator();
    %extend
    {
      PyObject *next()
      {
        DataArrayFloatTuple *ret=self->nextt();
        if(ret)
          return SWIG_NewPointerObj(SWIG_as_voidptr(ret),SWIGTYPE_p_MEDCoupling__DataArrayFloatTuple,SWIG_POINTER_OWN|0);
        else
          {
            PyErr_SetString(PyExc_StopIteration,"No more data.");
            return 0;
          }
      }
    }
  };

  class DataArrayFloatTuple
  {
  public:
    int getNumberOfCompo() const;
    DataArrayFloat *buildDAFloat(int nbOfTuples, int nbOfCompo) const;
    %extend
    {
      std::string __str__() const
      {
        return self->repr();
      }

      float __float__() const
      {
        return self->floatValue();
      }

      DataArrayFloat *buildDAFloat()
      {
        return self->buildDAFloat(1,self->getNumberOfCompo());
      }
  
      /*PyObject *___imul___(PyObject *trueSelf, PyObject *obj)
      {
        MCAuto<DataArrayFloat> ret=self->buildDAFloat(1,self->getNumberOfCompo());
        MEDCoupling_DataArrayFloat____imul___(ret,0,obj);
        Py_XINCREF(trueSelf);
        return trueSelf;
        }*/

      PyObject *__len__()
      {
        return PyInt_FromLong(self->getNumberOfCompo());
      }
    }
  };
  
  class DataArrayInt;
  class DataArrayDoubleIterator;
  
  class DataArrayDouble : public DataArray
  {
  public:
    static DataArrayDouble *New();
    double doubleValue() const;
    bool empty() const;
    void aggregate(const DataArrayDouble *other);
    DataArrayDouble *performCopyOrIncrRef(bool deepCopy) const;
    void deepCopyFrom(const DataArrayDouble& other);
    void reserve(std::size_t nbOfElems);
    void pushBackSilent(double val);
    double popBackSilent();
    void pack() const;
    void allocIfNecessary(int nbOfTuple, int nbOfCompo);
    void fillWithZero();
    void fillWithValue(double val);
    void iota(double init=0.);
    bool isUniform(double val, double eps) const;
    void sort(bool asc=true);
    void reverse();
    void checkMonotonic(bool increasing, double eps) const;
    bool isMonotonic(bool increasing, double eps) const;
    std::string repr() const;
    std::string reprZip() const;
    std::string reprNotTooLong() const;
    bool isEqual(const DataArrayDouble& other, double prec) const;
    bool isEqualWithoutConsideringStr(const DataArrayDouble& other, double prec) const;
    DataArrayDouble *fromNoInterlace() const;
    DataArrayDouble *toNoInterlace() const;
    DataArrayDouble *subArray(int tupleIdBg, int tupleIdEnd=-1) const;
    void transpose();
    DataArrayDouble *changeNbOfComponents(int newNbOfComp, double dftValue) const;
    void meldWith(const DataArrayDouble *other);
    DataArrayDouble *duplicateEachTupleNTimes(int nbTimes) const;
    DataArrayDouble *getDifferentValues(double prec, int limitTupleId=-1) const;
    DataArrayInt *findClosestTupleId(const DataArrayDouble *other) const;
    DataArrayInt *computeNbOfInteractionsWith(const DataArrayDouble *otherBBoxFrmt, double eps) const;
    void setPartOfValues1(const DataArrayDouble *a, int bgTuples, int endTuples, int stepTuples, int bgComp, int endComp, int stepComp, bool strictCompoCompare=true);
    void setPartOfValuesSimple1(double a, int bgTuples, int endTuples, int stepTuples, int bgComp, int endComp, int stepComp);
    void setPartOfValuesAdv(const DataArrayDouble *a, const DataArrayInt *tuplesSelec);
    double getIJ(int tupleId, int compoId) const;
    double front() const;
    double back() const;
    double getIJSafe(int tupleId, int compoId) const;
    void setIJ(int tupleId, int compoId, double newVal);
    void setIJSilent(int tupleId, int compoId, double newVal);
    double *getPointer();
    void checkNoNullValues() const;
    DataArrayDouble *computeBBoxPerTuple(double epsilon=0.0) const;
    void recenterForMaxPrecision(double eps);
    double getMaxValueInArray() const;
    double getMaxAbsValueInArray() const;
    double getMinValueInArray() const;
    int count(double value, double eps) const;
    double getAverageValue() const;
    double norm2() const;
    double normMax() const;
    double normMin() const;
    double accumulate(int compId) const;
    DataArrayDouble *fromPolarToCart() const;
    DataArrayDouble *fromCylToCart() const;
    DataArrayDouble *fromSpherToCart() const;
    DataArrayDouble *fromCartToPolar() const;
    DataArrayDouble *fromCartToCyl() const;
    DataArrayDouble *fromCartToSpher() const;
    DataArrayDouble *cartesianize(MEDCouplingAxisType atOfThis) const;
    DataArrayDouble *doublyContractedProduct() const;
    DataArrayDouble *determinant() const;
    DataArrayDouble *eigenValues() const;
    DataArrayDouble *eigenVectors() const;
    DataArrayDouble *inverse() const;
    DataArrayDouble *trace() const;
    DataArrayDouble *deviator() const;
    DataArrayDouble *magnitude() const;
    DataArrayDouble *maxPerTuple() const;
    DataArrayDouble *sumPerTuple() const;
    DataArrayDouble *buildEuclidianDistanceDenseMatrix() const;
    DataArrayDouble *buildEuclidianDistanceDenseMatrixWith(const DataArrayDouble *other) const;
    void sortPerTuple(bool asc);
    void abs();
    DataArrayDouble *computeAbs() const;
    void applyLin(double a, double b, int compoId);
    void applyLin(double a, double b);
    void applyInv(double numerator);
    void applyPow(double val);
    void applyRPow(double val);
    DataArrayDouble *negate() const;
    DataArrayDouble *applyFunc(int nbOfComp, FunctionToEvaluate func) const;
    DataArrayDouble *applyFunc(int nbOfComp, const std::string& func, bool isSafe=true) const;
    DataArrayDouble *applyFunc(const std::string& func, bool isSafe=true) const;
    void applyFuncOnThis(const std::string& func, bool isSafe=true);
    DataArrayDouble *applyFuncCompo(int nbOfComp, const std::string& func, bool isSafe=true) const;
    DataArrayDouble *applyFuncNamedCompo(int nbOfComp, const std::vector<std::string>& varsOrder, const std::string& func, bool isSafe=true) const;
    void applyFuncFast32(const std::string& func);
    void applyFuncFast64(const std::string& func);
    DataArrayInt *findIdsInRange(double vmin, double vmax) const;
    DataArrayInt *findIdsNotInRange(double vmin, double vmax) const;
    DataArrayInt *findIdsStrictlyNegative() const;
    static DataArrayDouble *Aggregate(const DataArrayDouble *a1, const DataArrayDouble *a2);
    static DataArrayDouble *Meld(const DataArrayDouble *a1, const DataArrayDouble *a2);
    static DataArrayDouble *Dot(const DataArrayDouble *a1, const DataArrayDouble *a2);
    static DataArrayDouble *CrossProduct(const DataArrayDouble *a1, const DataArrayDouble *a2);
    static DataArrayDouble *Max(const DataArrayDouble *a1, const DataArrayDouble *a2);
    static DataArrayDouble *Min(const DataArrayDouble *a1, const DataArrayDouble *a2);
    static DataArrayDouble *Add(const DataArrayDouble *a1, const DataArrayDouble *a2);
    void addEqual(const DataArrayDouble *other);
    static DataArrayDouble *Substract(const DataArrayDouble *a1, const DataArrayDouble *a2);
    void substractEqual(const DataArrayDouble *other);
    static DataArrayDouble *Multiply(const DataArrayDouble *a1, const DataArrayDouble *a2);
    void multiplyEqual(const DataArrayDouble *other);
    static DataArrayDouble *Divide(const DataArrayDouble *a1, const DataArrayDouble *a2);
    void divideEqual(const DataArrayDouble *other);
    static DataArrayDouble *Pow(const DataArrayDouble *a1, const DataArrayDouble *a2);
    void powEqual(const DataArrayDouble *other);
    MCAuto<DataArrayInt> findIdsGreaterOrEqualTo(double val) const;
    MCAuto<DataArrayInt> findIdsGreaterThan(double val) const;
    MCAuto<DataArrayInt> findIdsLowerOrEqualTo(double val) const;
    MCAuto<DataArrayInt> findIdsLowerThan(double val) const;
    MCAuto<DataArrayInt> convertToIntArr() const;
    MCAuto<DataArrayDouble> selectPartDef(const PartDefinition* pd) const;
    MCAuto<DataArrayDouble> cumSum() const;
    MCAuto<DataArrayFloat> convertToFloatArr() const;
    %extend
    {
      DataArrayDouble()
      {
        return DataArrayDouble::New();
      }

      static DataArrayDouble *New(PyObject *elt0, PyObject *nbOfTuples=0, PyObject *elt2=0)
      {
        return DataArrayT_New<double>(elt0,nbOfTuples,elt2);
      }
   
      DataArrayDouble(PyObject *elt0, PyObject *nbOfTuples=0, PyObject *elt2=0)
      {
        return MEDCoupling_DataArrayDouble_New__SWIG_1(elt0,nbOfTuples,elt2);
      }

      void pushBackValsSilent(PyObject *li)
      {
        double val;
        std::vector<double> bb;
        int sw,nbTuples=-1;
        const char msg[]="Python wrap of DataArrayDouble::pushBackValsSilent : ";
        const double *tmp=convertObjToPossibleCpp5_SingleCompo(li,sw,val,bb,msg,true,nbTuples);
        self->pushBackValsSilent(tmp,tmp+nbTuples);
      }

      std::string __repr__() const
      {
        std::ostringstream oss;
        self->reprQuickOverview(oss);
        return oss.str();
      }

      std::string __str__() const
      {
        return self->reprNotTooLong();
      }

      double __float__() const
      {
        return self->doubleValue();
      }

      int __len__() const
      {
        if(self->isAllocated())
          {
            return self->getNumberOfTuples();
          }
        else
          {
            throw INTERP_KERNEL::Exception("DataArrayDouble::__len__ : Instance is NOT allocated !");
          }
      }

      PyObject *asArcOfCircle() const
      {
        double center[2],radius,ang;
        self->asArcOfCircle(center,radius,ang);
        PyObject *ret(PyTuple_New(3));
        {
          PyObject *ret0(PyList_New(2));
          PyList_SetItem(ret0,0,PyFloat_FromDouble(center[0]));
          PyList_SetItem(ret0,1,PyFloat_FromDouble(center[1]));
          PyTuple_SetItem(ret,0,ret0);
        }
        PyTuple_SetItem(ret,1,PyFloat_FromDouble(radius));
        PyTuple_SetItem(ret,2,PyFloat_FromDouble(ang));        
        return ret;
      }

      DataArrayDoubleIterator *__iter__()
      {
        return self->iterator();
      }
   
      void setValues(PyObject *li, PyObject *nbOfTuples=0, PyObject *nbOfComp=0)
      {
        const char *msg="MEDCoupling::DataArrayDouble::setValues : Available API are : \n-DataArrayDouble.setValues([1.,3.,4.])\n-DataArrayDouble.setValues([1.,3.,4.],3)\n-DataArrayDouble.setValues([1.,3.,4.,5.],2,2)\n-DataArrayDouble.setValues([(1.,1.7),(3.,3.7),(4.,4.7)])\n !";
        if(PyList_Check(li) || PyTuple_Check(li))
          {
            if(nbOfTuples && nbOfTuples != Py_None)
              {
                if(PyInt_Check(nbOfTuples))
                  {
                    int nbOfTuples1=PyInt_AS_LONG(nbOfTuples);
                    if(nbOfTuples1<0)
                      throw INTERP_KERNEL::Exception("DataArrayDouble::setValues : should be a positive set of allocated memory !");
                    if(nbOfComp && nbOfComp != Py_None)
                      {
                        if(PyInt_Check(nbOfComp))
                          {//DataArrayDouble.setValues([1.,3.,4.,5.],2,2)
                            int nbOfCompo=PyInt_AS_LONG(nbOfComp);
                            if(nbOfCompo<0)
                              throw INTERP_KERNEL::Exception("DataArrayDouble::setValues : should be a positive number of components !");
                            std::vector<double> tmp=fillArrayWithPyListDbl2(li,nbOfTuples1,nbOfCompo);
                            self->alloc(nbOfTuples1,nbOfCompo); std::copy(tmp.begin(),tmp.end(),self->getPointer());
                          }
                        else
                          throw INTERP_KERNEL::Exception(msg);
                      }
                    else
                      {//DataArrayDouble.setValues([1.,3.,4.],3)
                        int tmpp1=-1;
                        std::vector<double> tmp=fillArrayWithPyListDbl2(li,nbOfTuples1,tmpp1);
                        self->alloc(nbOfTuples1,tmpp1); std::copy(tmp.begin(),tmp.end(),self->getPointer());
                      }
                  }
                else
                  throw INTERP_KERNEL::Exception(msg);
              }
            else
              {// DataArrayDouble.setValues([1.,3.,4.])
                int tmpp1=-1,tmpp2=-1;
                std::vector<double> tmp=fillArrayWithPyListDbl2(li,tmpp1,tmpp2);
                self->alloc(tmpp1,tmpp2); std::copy(tmp.begin(),tmp.end(),self->getPointer());
              }
          }
        else
          throw INTERP_KERNEL::Exception(msg);
      }

      PyObject *getValues() const
      {
        const double *vals(self->begin());
        return convertDblArrToPyList<double>(vals,self->getNbOfElems());
      }

#ifdef WITH_NUMPY
      PyObject *toNumPyArray() // not const. It is not a bug !
      {
        return ToNumPyArray<DataArrayDouble,double>(self,NPY_DOUBLE,"DataArrayDouble");
      }
#endif

      PyObject *isEqualIfNotWhy(const DataArrayDouble& other, double prec) const
      {
        std::string ret1;
        bool ret0=self->isEqualIfNotWhy(other,prec,ret1);
        PyObject *ret=PyTuple_New(2);
        PyObject *ret0Py=ret0?Py_True:Py_False;
        Py_XINCREF(ret0Py);
        PyTuple_SetItem(ret,0,ret0Py);
        PyTuple_SetItem(ret,1,PyString_FromString(ret1.c_str()));
        return ret;
      }

      PyObject *getValuesAsTuple() const
      {
        const double *vals(self->begin());
        int nbOfComp(self->getNumberOfComponents()),nbOfTuples(self->getNumberOfTuples());
        return convertDblArrToPyListOfTuple<double>(vals,nbOfComp,nbOfTuples);
      }

      static PyObject *ComputeIntegralOfSeg2IntoTri3(PyObject *seg2, PyObject *tri3)
      {
        const char msg[]="Python wrap of DataArrayDouble::ComputeIntegralOfSeg2IntoTri3 : ";
        double val,val2;
        DataArrayDouble *a,*a2;
        DataArrayDoubleTuple *aa,*aa2;
        std::vector<double> bb,bb2;
        int sw;
        const double *seg2Ptr(convertObjToPossibleCpp5_Safe(seg2,sw,val,a,aa,bb,msg,2,2,true));
        const double *tri3Ptr(convertObjToPossibleCpp5_Safe(tri3,sw,val2,a2,aa2,bb2,msg,3,2,true));
        //
        double res0[3],res1;
        DataArrayDouble::ComputeIntegralOfSeg2IntoTri3(seg2Ptr,tri3Ptr,res0,res1);
        PyObject *ret(PyTuple_New(2)),*ret0(PyTuple_New(3));
        PyTuple_SetItem(ret0,0,PyFloat_FromDouble(res0[0]));
        PyTuple_SetItem(ret0,1,PyFloat_FromDouble(res0[1]));
        PyTuple_SetItem(ret0,2,PyFloat_FromDouble(res0[2]));
        PyTuple_SetItem(ret,0,ret0);
        PyTuple_SetItem(ret,1,PyFloat_FromDouble(res1));
        return ret;
      }
      
      DataArrayDouble *symmetry3DPlane(PyObject *point, PyObject *normalVector)
      {
        const char msg[]="Python wrap of DataArrayDouble::symmetry3DPlane : ";
        double val,val2;
        DataArrayDouble *a,*a2;
        DataArrayDoubleTuple *aa,*aa2;
        std::vector<double> bb,bb2;
        int sw;
        const double *centerPtr(convertObjToPossibleCpp5_Safe(point,sw,val,a,aa,bb,msg,1,3,true));
        const double *vectorPtr(convertObjToPossibleCpp5_Safe(normalVector,sw,val2,a2,aa2,bb2,msg,1,3,true));
        MCAuto<DataArrayDouble> ret(self->symmetry3DPlane(centerPtr,vectorPtr));
        return ret.retn();
      }

      static PyObject *GiveBaseForPlane(PyObject *normalVector)
      {
        const char msg[]="Python wrap of DataArrayDouble::GiveBaseForPlane : ";
        double val,val2;
        DataArrayDouble *a,*a2;
        DataArrayDoubleTuple *aa,*aa2;
        std::vector<double> bb,bb2;
        int sw;
        const double *vectorPtr(convertObjToPossibleCpp5_Safe(normalVector,sw,val,a,aa,bb,msg,1,3,true));
        double res[9];
        DataArrayDouble::GiveBaseForPlane(vectorPtr,res);
        return convertDblArrToPyListOfTuple<double>(res,3,3);
      }

      DataArrayDouble *fromCartToCylGiven(const DataArrayDouble *coords, PyObject *center, PyObject *vector) const
      {
        const char msg[]="Python wrap of DataArrayDouble::fromCartToCylGiven : ";
        double val,val2;
        DataArrayDouble *a,*a2;
        DataArrayDoubleTuple *aa,*aa2;
        std::vector<double> bb,bb2;
        int sw;
        const double *centerPtr=convertObjToPossibleCpp5_Safe(center,sw,val,a,aa,bb,msg,1,3,true);
        const double *vectorPtr=convertObjToPossibleCpp5_Safe(vector,sw,val2,a2,aa2,bb2,msg,1,3,true);
        return self->fromCartToCylGiven(coords,centerPtr,vectorPtr);
      }
      
      DataArrayDouble *renumber(PyObject *li)
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumber(tmp);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            int size=self->getNumberOfTuples();
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumber(da2->getConstPointer());
          }
      }

      DataArrayDouble *renumberR(PyObject *li)
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberR(tmp);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            int size=self->getNumberOfTuples();
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberR(da2->getConstPointer());
          }
      }

      DataArrayDouble *renumberAndReduce(PyObject *li, int newNbOfTuple)
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberAndReduce(tmp,newNbOfTuple);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            int size=self->getNumberOfTuples();
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberAndReduce(da2->getConstPointer(),newNbOfTuple);
          }
      }

      PyObject *minimalDistanceTo(const DataArrayDouble *other) const
      {
        int thisTupleId,otherTupleId;
        double r0=self->minimalDistanceTo(other,thisTupleId,otherTupleId);
        PyObject *ret=PyTuple_New(3);
        PyTuple_SetItem(ret,0,PyFloat_FromDouble(r0));
        PyTuple_SetItem(ret,1,PyInt_FromLong(thisTupleId));
        PyTuple_SetItem(ret,2,PyInt_FromLong(otherTupleId));
        return ret;
      }

      PyObject *getMaxValue() const
      {
        int tmp;
        double r1=self->getMaxValue(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyFloat_FromDouble(r1));
        PyTuple_SetItem(ret,1,PyInt_FromLong(tmp));
        return ret;
      }

	  PyObject *getMaxAbsValue() const
      {
        std::size_t tmp;
        double r1=self->getMaxAbsValue(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyFloat_FromDouble(r1));
        PyTuple_SetItem(ret,1,PyInt_FromLong(tmp));
        return ret;
      }

      PyObject *getMaxValue2() const
      {
        DataArrayInt *tmp;
        double r1=self->getMaxValue2(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyFloat_FromDouble(r1));
        PyTuple_SetItem(ret,1,SWIG_NewPointerObj(SWIG_as_voidptr(tmp),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return ret;
      }

      PyObject *getMinValue() const
      {
        int tmp;
        double r1=self->getMinValue(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyFloat_FromDouble(r1));
        PyTuple_SetItem(ret,1,PyInt_FromLong(tmp));
        return ret;
      }

      PyObject *getMinValue2() const
      {
        DataArrayInt *tmp;
        double r1=self->getMinValue2(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyFloat_FromDouble(r1));
        PyTuple_SetItem(ret,1,SWIG_NewPointerObj(SWIG_as_voidptr(tmp),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return ret;
      }

      PyObject *getMinMaxPerComponent() const
      {
        int nbOfCompo(self->getNumberOfComponents());
        INTERP_KERNEL::AutoPtr<double> tmp(new double[2*nbOfCompo]);
        self->getMinMaxPerComponent(tmp);
        PyObject *ret=convertDblArrToPyListOfTuple<double>(tmp,2,nbOfCompo);
        return ret;
      }
      
      PyObject *normMaxPerComponent() const
      {
        int nbOfCompo(self->getNumberOfComponents());
        INTERP_KERNEL::AutoPtr<double> tmp(new double[nbOfCompo]);
        self->normMaxPerComponent(tmp);
        return convertDblArrToPyList<double>(tmp,nbOfCompo);
      }

      PyObject *accumulate() const
      {
        int sz=self->getNumberOfComponents();
        INTERP_KERNEL::AutoPtr<double> tmp=new double[sz];
        self->accumulate(tmp);
        return convertDblArrToPyList<double>(tmp,sz);
      }

      DataArrayDouble *accumulatePerChunck(PyObject *indexArr) const
      {
        int sw,sz,val;
        std::vector<int> val2;
        const int *bg=convertIntStarLikePyObjToCppIntStar(indexArr,sw,sz,val,val2);
        return self->accumulatePerChunck(bg,bg+sz);
      }

      PyObject *findCommonTuples(double prec, int limitNodeId=-1) const
      {
        DataArrayInt *comm, *commIndex;
        self->findCommonTuples(prec,limitNodeId,comm,commIndex);
        PyObject *res = PyList_New(2);
        PyList_SetItem(res,0,SWIG_NewPointerObj(SWIG_as_voidptr(comm),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        PyList_SetItem(res,1,SWIG_NewPointerObj(SWIG_as_voidptr(commIndex),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return res;
      }

      PyObject *distanceToTuple(PyObject *tuple) const
      {
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        int tupleId=-1,nbOfCompo=self->getNumberOfComponents();
        const double *pt=convertObjToPossibleCpp5_Safe(tuple,sw,val,a,aa,bb,"Python wrap of DataArrayDouble::distanceToTuple",1,nbOfCompo,true);
        //
        double ret0=self->distanceToTuple(pt,pt+nbOfCompo,tupleId);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyFloat_FromDouble(ret0));
        PyTuple_SetItem(ret,1,PyInt_FromLong(tupleId));
        return ret;
      }

      void setSelectedComponents(const DataArrayDouble *a, PyObject *li)
      {
        std::vector<int> tmp;
        convertPyToNewIntArr3(li,tmp);
        self->setSelectedComponents(a,tmp);
      }

      PyObject *explodeComponents() const
      {
        std::vector< MCAuto<DataArrayDouble> > retCpp(self->explodeComponents());
        std::size_t sz(retCpp.size());
        PyObject *res(PyList_New(sz));
        for(std::size_t i=0;i<sz;i++)
          PyList_SetItem(res,i,SWIG_NewPointerObj(SWIG_as_voidptr(retCpp[i].retn()),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 ));
        return res;
      }
   
      PyObject *getTuple(int tupleId)
      {
        int sz=self->getNumberOfComponents();
        INTERP_KERNEL::AutoPtr<double> tmp=new double[sz];
        self->getTuple(tupleId,tmp);
        return convertDblArrToPyList<double>(tmp,sz);
      }

      static DataArrayDouble *Aggregate(PyObject *li)
      {
        std::vector<const DataArrayDouble *> tmp;
        convertFromPyObjVectorOfObj<const DataArrayDouble *>(li,SWIGTYPE_p_MEDCoupling__DataArrayDouble,"DataArrayDouble",tmp);
        return DataArrayDouble::Aggregate(tmp);
      }

      static DataArrayDouble *Meld(PyObject *li)
      {
        std::vector<const DataArrayDouble *> tmp;
        convertFromPyObjVectorOfObj<const DataArrayDouble *>(li,SWIGTYPE_p_MEDCoupling__DataArrayDouble,"DataArrayDouble",tmp);
        return DataArrayDouble::Meld(tmp);
      }

      PyObject *computeTupleIdsNearTuples(PyObject *pt, double eps) const
      {
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        int nbComp=self->getNumberOfComponents(),nbTuples=-1;
        const char msg[]="Python wrap of DataArrayDouble::computeTupleIdsNearTuples : ";
        const double *pos=convertObjToPossibleCpp5_Safe2(pt,sw,val,a,aa,bb,msg,nbComp,true,nbTuples);
        MCAuto<DataArrayDouble> inpu=DataArrayDouble::New(); inpu->useArray(pos,false,DeallocType::CPP_DEALLOC,nbTuples,nbComp);
        DataArrayInt *c=0,*cI=0;
        self->computeTupleIdsNearTuples(inpu,eps,c,cI);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,SWIG_NewPointerObj(SWIG_as_voidptr(c),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        PyTuple_SetItem(ret,1,SWIG_NewPointerObj(SWIG_as_voidptr(cI),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return ret;
      }

      PyObject *areIncludedInMe(const DataArrayDouble *other, double prec) const
      {
        DataArrayInt *ret1=0;
        bool ret0=self->areIncludedInMe(other,prec,ret1);
        PyObject *ret=PyTuple_New(2);
        PyObject *ret0Py=ret0?Py_True:Py_False;
        Py_XINCREF(ret0Py);
        PyTuple_SetItem(ret,0,ret0Py);
        PyTuple_SetItem(ret,1,SWIG_NewPointerObj(SWIG_as_voidptr(ret1),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return ret;
      }

      PyObject *__getitem__(PyObject *obj)
      {
        return DataArrayT__getitem<double>(self,obj);
      }

      DataArrayDouble *__setitem__(PyObject *obj, PyObject *value)
      {
        return DataArrayT__setitem__<double>(self,obj,value);
      }

      DataArrayDouble *__neg__() const
      {
        return self->negate();
      }

      PyObject *__add__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in DataArrayDouble.__add__ !";
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        //
#ifndef WITHOUT_AUTOFIELD
        void *argp;
        if(SWIG_IsOK(SWIG_ConvertPtr(obj,&argp,SWIGTYPE_p_MEDCoupling__MEDCouplingFieldDouble,0|0)))
          {
            MEDCouplingFieldDouble *other=reinterpret_cast< MEDCoupling::MEDCouplingFieldDouble * >(argp);
            if(other)
              {
                PyObject *tmp=SWIG_NewPointerObj(SWIG_as_voidptr(self),SWIGTYPE_p_MEDCoupling__DataArrayDouble, 0 | 0 );
                MCAuto<MEDCouplingFieldDouble> ret=MEDCoupling_MEDCouplingFieldDouble___radd__Impl(other,tmp);
                Py_XDECREF(tmp);
                return SWIG_NewPointerObj(SWIG_as_voidptr(ret.retn()),SWIGTYPE_p_MEDCoupling__MEDCouplingFieldDouble, SWIG_POINTER_OWN | 0 );
              }
            else
              throw INTERP_KERNEL::Exception(msg);
          }
#endif
        //
        convertDoubleStarLikePyObjToCpp_2(obj,sw,val,a,aa,bb);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayDouble> ret=self->deepCopy();
              ret->applyLin(1.,val);
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret.retn()),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 2:
            {
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Add(self,a)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 3:
            {
              MCAuto<DataArrayDouble> aaa=aa->buildDADouble(1,self->getNumberOfComponents());
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Add(self,aaa)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 4:
            {
              MCAuto<DataArrayDouble> aaa=DataArrayDouble::New(); aaa->useArray(&bb[0],false,DeallocType::CPP_DEALLOC,1,(int)bb.size());
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Add(self,aaa)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayDouble *__radd__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __radd__ !";
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        convertDoubleStarLikePyObjToCpp_2(obj,sw,val,a,aa,bb);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayDouble> ret=self->deepCopy();
              ret->applyLin(1.,val);
              return ret.retn();
            }
          case 3:
            {
              MCAuto<DataArrayDouble> aaa=aa->buildDADouble(1,self->getNumberOfComponents());
              return DataArrayDouble::Add(self,aaa);
            }
          case 4:
            {
              MCAuto<DataArrayDouble> aaa=DataArrayDouble::New(); aaa->useArray(&bb[0],false,DeallocType::CPP_DEALLOC,1,(int)bb.size());
              return DataArrayDouble::Add(self,aaa);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }
   
      PyObject *___iadd___(PyObject *trueSelf, PyObject *obj)
      {
        return DataArrayT_iadd<double>(trueSelf,obj,self);
      }

      PyObject *__sub__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __sub__ !";
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        //
#ifndef WITHOUT_AUTOFIELD
        void *argp;
        if(SWIG_IsOK(SWIG_ConvertPtr(obj,&argp,SWIGTYPE_p_MEDCoupling__MEDCouplingFieldDouble,0|0)))
          {
            MEDCouplingFieldDouble *other=reinterpret_cast< MEDCoupling::MEDCouplingFieldDouble * >(argp);
            if(other)
              {
                PyObject *tmp=SWIG_NewPointerObj(SWIG_as_voidptr(self),SWIGTYPE_p_MEDCoupling__DataArrayDouble, 0 | 0 );
                MCAuto<MEDCouplingFieldDouble> ret=MEDCoupling_MEDCouplingFieldDouble___rsub__Impl(other,tmp);
                Py_XDECREF(tmp);
                return SWIG_NewPointerObj(SWIG_as_voidptr(ret.retn()),SWIGTYPE_p_MEDCoupling__MEDCouplingFieldDouble, SWIG_POINTER_OWN | 0 );
              }
            else
              throw INTERP_KERNEL::Exception(msg);
          }
#endif
        //
        convertDoubleStarLikePyObjToCpp_2(obj,sw,val,a,aa,bb);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayDouble> ret=self->deepCopy();
              ret->applyLin(1.,-val);
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret.retn()),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 2:
            {
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Substract(self,a)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 3:
            {
              MCAuto<DataArrayDouble> aaa=aa->buildDADouble(1,self->getNumberOfComponents());
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Substract(self,aaa)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 4:
            {
              MCAuto<DataArrayDouble> aaa=DataArrayDouble::New(); aaa->useArray(&bb[0],false,DeallocType::CPP_DEALLOC,1,(int)bb.size());
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Substract(self,aaa)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayDouble *__rsub__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __rsub__ !";
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        convertDoubleStarLikePyObjToCpp_2(obj,sw,val,a,aa,bb);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayDouble> ret=self->deepCopy();
              ret->applyLin(-1.,val);
              return ret.retn();
            }
          case 3:
            {
              MCAuto<DataArrayDouble> aaa=aa->buildDADouble(1,self->getNumberOfComponents());
              return DataArrayDouble::Substract(aaa,self);
            }
          case 4:
            {
              MCAuto<DataArrayDouble> aaa=DataArrayDouble::New(); aaa->useArray(&bb[0],false,DeallocType::CPP_DEALLOC,1,(int)bb.size());
              return DataArrayDouble::Substract(aaa,self);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      PyObject *___isub___(PyObject *trueSelf, PyObject *obj)
      {
        return DataArrayT_isub<double>(trueSelf,obj,self);
      }

      PyObject *__mul__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __mul__ !";
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        //
#ifndef WITHOUT_AUTOFIELD
        void *argp;
        if(SWIG_IsOK(SWIG_ConvertPtr(obj,&argp,SWIGTYPE_p_MEDCoupling__MEDCouplingFieldDouble,0|0)))
          {
            MEDCouplingFieldDouble *other=reinterpret_cast< MEDCoupling::MEDCouplingFieldDouble * >(argp);
            if(other)
              {
                PyObject *tmp=SWIG_NewPointerObj(SWIG_as_voidptr(self),SWIGTYPE_p_MEDCoupling__DataArrayDouble, 0 | 0 );
                MCAuto<MEDCouplingFieldDouble> ret=MEDCoupling_MEDCouplingFieldDouble___rmul__Impl(other,tmp);
                Py_XDECREF(tmp);
                return SWIG_NewPointerObj(SWIG_as_voidptr(ret.retn()),SWIGTYPE_p_MEDCoupling__MEDCouplingFieldDouble, SWIG_POINTER_OWN | 0 );
              }
            else
              throw INTERP_KERNEL::Exception(msg);
          }
#endif
        //
        convertDoubleStarLikePyObjToCpp_2(obj,sw,val,a,aa,bb);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayDouble> ret=self->deepCopy();
              ret->applyLin(val,0.);
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret.retn()),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 2:
            {
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Multiply(self,a)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 3:
            {
              MCAuto<DataArrayDouble> aaa=aa->buildDADouble(1,self->getNumberOfComponents());
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Multiply(self,aaa)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 4:
            {
              MCAuto<DataArrayDouble> aaa=DataArrayDouble::New(); aaa->useArray(&bb[0],false,DeallocType::CPP_DEALLOC,1,(int)bb.size());
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Multiply(self,aaa)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayDouble *__rmul__(PyObject *obj)
      {
        return DataArrayFPT_rmul<double>(self,obj);
      }

      PyObject *___imul___(PyObject *trueSelf, PyObject *obj)
      {
        return DataArrayT_imul<double>(trueSelf,obj,self);
      }

      PyObject *__div__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __div__ !";
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        //
#ifndef WITHOUT_AUTOFIELD
        void *argp;
        if(SWIG_IsOK(SWIG_ConvertPtr(obj,&argp,SWIGTYPE_p_MEDCoupling__MEDCouplingFieldDouble,0|0)))
          {
            MEDCouplingFieldDouble *other=reinterpret_cast< MEDCoupling::MEDCouplingFieldDouble * >(argp);
            if(other)
              {
                PyObject *tmp=SWIG_NewPointerObj(SWIG_as_voidptr(self),SWIGTYPE_p_MEDCoupling__DataArrayDouble, 0 | 0 );
                MCAuto<MEDCouplingFieldDouble> ret=MEDCoupling_MEDCouplingFieldDouble___rdiv__Impl(other,tmp);
                Py_XDECREF(tmp);
                return SWIG_NewPointerObj(SWIG_as_voidptr(ret.retn()),SWIGTYPE_p_MEDCoupling__MEDCouplingFieldDouble, SWIG_POINTER_OWN | 0 );
              }
            else
              throw INTERP_KERNEL::Exception(msg);
          }
#endif
        //
        convertDoubleStarLikePyObjToCpp_2(obj,sw,val,a,aa,bb);
        switch(sw)
          {
          case 1:
            {
              if(val==0.)
                throw INTERP_KERNEL::Exception("DataArrayDouble::__div__ : trying to divide by zero !");
              MCAuto<DataArrayDouble> ret=self->deepCopy();
              ret->applyLin(1/val,0.);
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret.retn()),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 2:
            {
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Divide(self,a)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 3:
            {
              MCAuto<DataArrayDouble> aaa=aa->buildDADouble(1,self->getNumberOfComponents());
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Divide(self,aaa)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          case 4:
            {
              MCAuto<DataArrayDouble> aaa=DataArrayDouble::New(); aaa->useArray(&bb[0],false,DeallocType::CPP_DEALLOC,1,(int)bb.size());
              return SWIG_NewPointerObj(SWIG_as_voidptr(DataArrayDouble::Divide(self,aaa)),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 );
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayDouble *__rdiv__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __rdiv__ !";
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        convertDoubleStarLikePyObjToCpp_2(obj,sw,val,a,aa,bb);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayDouble> ret=self->deepCopy();
              ret->applyInv(val);
              return ret.retn();
            }
          case 3:
            {
              MCAuto<DataArrayDouble> aaa=aa->buildDADouble(1,self->getNumberOfComponents());
              return DataArrayDouble::Divide(aaa,self);
            }
          case 4:
            {
              MCAuto<DataArrayDouble> aaa=DataArrayDouble::New(); aaa->useArray(&bb[0],false,DeallocType::CPP_DEALLOC,1,(int)bb.size());
              return DataArrayDouble::Divide(aaa,self);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      PyObject *___idiv___(PyObject *trueSelf, PyObject *obj)
      {
        return DataArrayT_idiv<double>(trueSelf,obj,self);
      }
   
      DataArrayDouble *__pow__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __pow__ !";
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        convertDoubleStarLikePyObjToCpp_2(obj,sw,val,a,aa,bb);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayDouble> ret=self->deepCopy();
              ret->applyPow(val);
              return ret.retn();
            }
          case 2:
            {
              return DataArrayDouble::Pow(self,a);
            }
          case 3:
            {
              MCAuto<DataArrayDouble> aaa=aa->buildDADouble(1,self->getNumberOfComponents());
              return DataArrayDouble::Pow(self,aaa);
            }
          case 4:
            {
              MCAuto<DataArrayDouble> aaa=DataArrayDouble::New(); aaa->useArray(&bb[0],false,DeallocType::CPP_DEALLOC,1,(int)bb.size());
              return DataArrayDouble::Pow(self,aaa);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayDouble *__rpow__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __rpow__ !";
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        convertDoubleStarLikePyObjToCpp_2(obj,sw,val,a,aa,bb);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayDouble> ret=self->deepCopy();
              ret->applyRPow(val);
              return ret.retn();
            }
          case 3:
            {
              MCAuto<DataArrayDouble> aaa=aa->buildDADouble(1,self->getNumberOfComponents());
              return DataArrayDouble::Pow(aaa,self);
            }
          case 4:
            {
              MCAuto<DataArrayDouble> aaa=DataArrayDouble::New(); aaa->useArray(&bb[0],false,DeallocType::CPP_DEALLOC,1,(int)bb.size());
              return DataArrayDouble::Pow(aaa,self);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      PyObject *___ipow___(PyObject *trueSelf, PyObject *obj)
      {
        const char msg[]="Unexpected situation in __ipow__ !";
        double val;
        DataArrayDouble *a;
        DataArrayDoubleTuple *aa;
        std::vector<double> bb;
        int sw;
        convertDoubleStarLikePyObjToCpp_2(obj,sw,val,a,aa,bb);
        switch(sw)
          {
          case 1:
            {
              self->applyPow(val);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 2:
            {
              self->powEqual(a);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 3:
            {
              MCAuto<DataArrayDouble> aaa=aa->buildDADouble(1,self->getNumberOfComponents());
              self->powEqual(aaa);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 4:
            {
              MCAuto<DataArrayDouble> aaa=DataArrayDouble::New(); aaa->useArray(&bb[0],false,DeallocType::CPP_DEALLOC,1,(int)bb.size());
              self->powEqual(aaa);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }
   
      PyObject *computeTupleIdsNearTuples(const DataArrayDouble *other, double eps)
      {
        DataArrayInt *c=0,*cI=0;
        //
        self->computeTupleIdsNearTuples(other,eps,c,cI);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,SWIG_NewPointerObj(SWIG_as_voidptr(c),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        PyTuple_SetItem(ret,1,SWIG_NewPointerObj(SWIG_as_voidptr(cI),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return ret;
      }

      PyObject *maxPerTupleWithCompoId() const
      {
        DataArrayInt *ret1=0;
        DataArrayDouble *ret0=self->maxPerTupleWithCompoId(ret1);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,SWIG_NewPointerObj(SWIG_as_voidptr(ret0),SWIGTYPE_p_MEDCoupling__DataArrayDouble, SWIG_POINTER_OWN | 0 ));
        PyTuple_SetItem(ret,1,SWIG_NewPointerObj(SWIG_as_voidptr(ret1),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return ret;
      }
    }
  };

  class DataArrayDoubleTuple;

  class DataArrayDoubleIterator
  {
  public:
    DataArrayDoubleIterator(DataArrayDouble *da);
    ~DataArrayDoubleIterator();
    %extend
    {
      PyObject *next()
      {
        DataArrayDoubleTuple *ret=self->nextt();
        if(ret)
          return SWIG_NewPointerObj(SWIG_as_voidptr(ret),SWIGTYPE_p_MEDCoupling__DataArrayDoubleTuple,SWIG_POINTER_OWN|0);
        else
          {
            PyErr_SetString(PyExc_StopIteration,"No more data.");
            return 0;
          }
      }
    }
  };

  class DataArrayDoubleTuple
  {
  public:
    int getNumberOfCompo() const;
    DataArrayDouble *buildDADouble(int nbOfTuples, int nbOfCompo) const;
    %extend
    {
      std::string __str__() const
      {
        return self->repr();
      }

      double __float__() const
      {
        return self->doubleValue();
      }

      DataArrayDouble *buildDADouble()
      {
        return self->buildDADouble(1,self->getNumberOfCompo());
      }

      PyObject *___iadd___(PyObject *trueSelf, PyObject *obj)
      {
        MCAuto<DataArrayDouble> ret=self->buildDADouble(1,self->getNumberOfCompo());
        MEDCoupling_DataArrayDouble____iadd___(ret,0,obj);
        Py_XINCREF(trueSelf);
        return trueSelf;
      }
  
      PyObject *___isub___(PyObject *trueSelf, PyObject *obj)
      {
        MCAuto<DataArrayDouble> ret=self->buildDADouble(1,self->getNumberOfCompo());
        MEDCoupling_DataArrayDouble____isub___(ret,0,obj);
        Py_XINCREF(trueSelf);
        return trueSelf;
      }
  
      PyObject *___imul___(PyObject *trueSelf, PyObject *obj)
      {
        MCAuto<DataArrayDouble> ret=self->buildDADouble(1,self->getNumberOfCompo());
        MEDCoupling_DataArrayDouble____imul___(ret,0,obj);
        Py_XINCREF(trueSelf);
        return trueSelf;
      }

      PyObject *___idiv___(PyObject *trueSelf, PyObject *obj)
      {
        MCAuto<DataArrayDouble> ret=self->buildDADouble(1,self->getNumberOfCompo());
        MEDCoupling_DataArrayDouble____idiv___(ret,0,obj);
        Py_XINCREF(trueSelf);
        return trueSelf;
      }

      PyObject *__len__()
      {
        return PyInt_FromLong(self->getNumberOfCompo());
      }

      PyObject *__getitem__(PyObject *obj)
      {
        const char msg2[]="DataArrayDoubleTuple::__getitem__ : Mismatch of slice values in 2nd parameter (components) !";
        int sw;
        int singleVal;
        std::vector<int> multiVal;
        std::pair<int, std::pair<int,int> > slic;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        const double *pt=self->getConstPointer();
        int nbc=self->getNumberOfCompo();
        convertIntStarOrSliceLikePyObjToCppWithNegIntInterp(obj,nbc,sw,singleVal,multiVal,slic,daIntTyypp);
        switch(sw)
          {
          case 1:
            {
              if(singleVal>=nbc)
                {
                  std::ostringstream oss;
                  oss << "Requesting for id " << singleVal << " having only " << nbc << " components !";
                  PyErr_SetString(PyExc_StopIteration,oss.str().c_str());
                  return 0;
                }
              if(singleVal>=0)
                return PyFloat_FromDouble(pt[singleVal]);
              else
                {
                  if(nbc+singleVal>0)
                    return PyFloat_FromDouble(pt[nbc+singleVal]);
                  else
                    {
                      std::ostringstream oss;
                      oss << "Requesting for id " << singleVal << " having only " << nbc << " components !";
                      throw INTERP_KERNEL::Exception(oss.str().c_str());
                    }
                }
            }
          case 2:
            {
              PyObject *t=PyTuple_New(multiVal.size());
              for(int j=0;j<(int)multiVal.size();j++)
                {
                  int cid=multiVal[j];
                  if(cid>=nbc)
                    {
                      std::ostringstream oss;
                      oss << "Requesting for id #" << cid << " having only " << nbc << " components !";
                      throw INTERP_KERNEL::Exception(oss.str().c_str());
                    }
                  PyTuple_SetItem(t,j,PyFloat_FromDouble(pt[cid]));
                }
              return t;
            }
          case 3:
            {
              int sz=DataArray::GetNumberOfItemGivenBES(slic.first,slic.second.first,slic.second.second,msg2);
              PyObject *t=PyTuple_New(sz);
              for(int j=0;j<sz;j++)
                PyTuple_SetItem(t,j,PyFloat_FromDouble(pt[slic.first+j*slic.second.second]));
              return t;
            }
          default:
            throw INTERP_KERNEL::Exception("DataArrayDoubleTuple::__getitem__ : unrecognized type entered !");
          }
      }

      DataArrayDoubleTuple *__setitem__(PyObject *obj, PyObject *value)
      {
        const char msg[]="DataArrayDoubleTuple::__setitem__ : unrecognized type entered, int, slice, list<int>, tuple<int> !";
        const char msg2[]="DataArrayDoubleTuple::__setitem__ : Mismatch of slice values in 2nd parameter (components) !";
        int sw1,sw2;
        double singleValV;
        std::vector<double> multiValV;
        MEDCoupling::DataArrayDoubleTuple *daIntTyyppV=0;
        int nbc=self->getNumberOfCompo();
        convertDoubleStarLikePyObjToCpp(value,sw1,singleValV,multiValV,daIntTyyppV);
        int singleVal;
        std::vector<int> multiVal;
        std::pair<int, std::pair<int,int> > slic;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        double *pt=self->getPointer();
        convertIntStarOrSliceLikePyObjToCppWithNegIntInterp(obj,nbc,sw2,singleVal,multiVal,slic,daIntTyypp);
        switch(sw2)
          {
          case 1:
            {
              if(singleVal>=nbc)
                {
                  std::ostringstream oss;
                  oss << "Requesting for setting id # " << singleVal << " having only " << nbc << " components !";
                  throw INTERP_KERNEL::Exception(oss.str().c_str());
                }
              switch(sw1)
                {
                case 1:
                  {
                    pt[singleVal]=singleValV;
                    return self;
                  }
                case 2:
                  {
                    if(multiValV.size()!=1)
                      {
                        std::ostringstream oss;
                        oss << "Requesting for setting id # " << singleVal << " with a list or tuple with size != 1 ! ";
                        throw INTERP_KERNEL::Exception(oss.str().c_str());
                      }
                    pt[singleVal]=multiValV[0];
                    return self;
                  }
                case 3:
                  {
                    pt[singleVal]=daIntTyyppV->getConstPointer()[0];
                    return self;
                  }
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
            }
          case 2:
            {
              switch(sw1)
                {
                case 1:
                  {
                    for(std::vector<int>::const_iterator it=multiVal.begin();it!=multiVal.end();it++)
                      {
                        if(*it>=nbc)
                          {
                            std::ostringstream oss;
                            oss << "Requesting for setting id # " << *it << " having only " << nbc << " components !";
                            throw INTERP_KERNEL::Exception(oss.str().c_str());
                          }
                        pt[*it]=singleValV;
                      }
                    return self;
                  }
                case 2:
                  {
                    if(multiVal.size()!=multiValV.size())
                      {
                        std::ostringstream oss;
                        oss << "Mismatch length of during assignment : " << multiValV.size() << " != " << multiVal.size() << " !";
                        throw INTERP_KERNEL::Exception(oss.str().c_str());
                      }
                    for(int i=0;i<(int)multiVal.size();i++)
                      {
                        int pos=multiVal[i];
                        if(pos>=nbc)
                          {
                            std::ostringstream oss;
                            oss << "Requesting for setting id # " << pos << " having only " << nbc << " components !";
                            throw INTERP_KERNEL::Exception(oss.str().c_str());
                          }
                        pt[multiVal[i]]=multiValV[i];
                      }
                    return self;
                  }
                case 3:
                  {
                    const double *ptV=daIntTyyppV->getConstPointer();
                    if(nbc>daIntTyyppV->getNumberOfCompo())
                      {
                        std::ostringstream oss;
                        oss << "Mismatch length of during assignment : " << nbc << " != " << daIntTyyppV->getNumberOfCompo() << " !";
                        throw INTERP_KERNEL::Exception(oss.str().c_str());
                      }
                    std::copy(ptV,ptV+nbc,pt);
                    return self;
                  }
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
            }
          case 3:
            {
              int sz=DataArray::GetNumberOfItemGivenBES(slic.first,slic.second.first,slic.second.second,msg2);
              switch(sw1)
                {
                case 1:
                  {
                    for(int j=0;j<sz;j++)
                      pt[slic.first+j*slic.second.second]=singleValV;
                    return self;
                  }
                case 2:
                  {
                    if(sz!=(int)multiValV.size())
                      {
                        std::ostringstream oss;
                        oss << "Mismatch length of during assignment : " << multiValV.size() << " != " << sz << " !";
                        throw INTERP_KERNEL::Exception(oss.str().c_str());
                      }
                    for(int j=0;j<sz;j++)
                      pt[slic.first+j*slic.second.second]=multiValV[j];
                    return self;
                  }
                case 3:
                  {
                    const double *ptV=daIntTyyppV->getConstPointer();
                    if(sz>daIntTyyppV->getNumberOfCompo())
                      {
                        std::ostringstream oss;
                        oss << "Mismatch length of during assignment : " << nbc << " != " << daIntTyyppV->getNumberOfCompo() << " !";
                        throw INTERP_KERNEL::Exception(oss.str().c_str());
                      }
                    for(int j=0;j<sz;j++)
                      pt[slic.first+j*slic.second.second]=ptV[j];
                    return self;
                  }
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }
    }
  };

  class DataArrayIntIterator;

  class DataArrayInt : public DataArray
  {
  public:
    static DataArrayInt *New();
    int intValue() const;
    int getHashCode() const;
    bool empty() const;
    void aggregate(const DataArrayInt *other);
    DataArrayInt *performCopyOrIncrRef(bool deepCopy) const;
    void deepCopyFrom(const DataArrayInt& other);
    void reserve(std::size_t nbOfElems);
    void pushBackSilent(int val);
    int popBackSilent();
    void pack() const;
    void allocIfNecessary(int nbOfTuple, int nbOfCompo);
    bool isEqual(const DataArrayInt& other) const;
    bool isEqualWithoutConsideringStr(const DataArrayInt& other) const;
    bool isEqualWithoutConsideringStrAndOrder(const DataArrayInt& other) const;
    DataArrayInt *buildPermutationArr(const DataArrayInt& other) const;
    DataArrayInt *sumPerTuple() const;
    void sort(bool asc=true);
    void reverse();
    void checkMonotonic(bool increasing) const;
    bool isMonotonic(bool increasing) const;
    void checkStrictlyMonotonic(bool increasing) const;
    bool isStrictlyMonotonic(bool increasing) const;
    void fillWithZero();
    void fillWithValue(int val);
    void iota(int init=0);
    std::string repr() const;
    std::string reprZip() const;
    std::string reprNotTooLong() const;
    DataArrayInt *invertArrayO2N2N2O(int newNbOfElem) const;
    DataArrayInt *invertArrayN2O2O2N(int oldNbOfElem) const;
    DataArrayInt *invertArrayO2N2N2OBis(int newNbOfElem) const;
    MCAuto< MapII > invertArrayN2O2O2NOptimized() const;
    MCAuto< MapII > giveN2OOptimized() const;
    DataArrayInt *indicesOfSubPart(const DataArrayInt& partOfThis) const;
    DataArrayInt *fromNoInterlace() const;
    DataArrayInt *toNoInterlace() const;
    DataArrayInt *selectByTupleIdSafeSlice(int bg, int end, int step) const;
    DataArrayInt *checkAndPreparePermutation() const;
    DataArrayInt *buildPermArrPerLevel() const;
    bool isIota(int sizeExpected) const;
    bool isUniform(int val) const;
    int checkUniformAndGuess() const;
    bool hasUniqueValues() const;
    DataArrayInt *subArray(int tupleIdBg, int tupleIdEnd=-1) const;
    void transpose();
    DataArrayInt *changeNbOfComponents(int newNbOfComp, int dftValue) const;
    void meldWith(const DataArrayInt *other);
    void setPartOfValues1(const DataArrayInt *a, int bgTuples, int endTuples, int stepTuples, int bgComp, int endComp, int stepComp, bool strictCompoCompare=true);
    void setPartOfValuesSimple1(int a, int bgTuples, int endTuples, int stepTuples, int bgComp, int endComp, int stepComp);
    void setPartOfValuesAdv(const DataArrayInt *a, const DataArrayInt *tuplesSelec);
    void getTuple(int tupleId, int *res) const;
    int getIJ(int tupleId, int compoId) const;
    int getIJSafe(int tupleId, int compoId) const;
    int front() const;
    int back() const;
    void setIJ(int tupleId, int compoId, int newVal);
    void setIJSilent(int tupleId, int compoId, int newVal);
    int *getPointer();
    const int *getConstPointer() const;
    DataArrayIntIterator *iterator();
    const int *begin() const;
    const int *end() const;
    DataArrayInt *findIdsEqual(int val) const;
    DataArrayInt *findIdsNotEqual(int val) const;
    int changeValue(int oldValue, int newValue);
    int findIdFirstEqualTuple(const std::vector<int>& tupl) const;
    int findIdFirstEqual(int value) const;
    int findIdFirstEqual(const std::vector<int>& vals) const;
    int findIdSequence(const std::vector<int>& vals) const;
    bool presenceOfTuple(const std::vector<int>& tupl) const;
    bool presenceOfValue(int value) const;
    bool presenceOfValue(const std::vector<int>& vals) const;
    int count(int value) const;
    int accumulate(int compId) const;
    int getMaxValueInArray() const;
    int getMaxAbsValueInArray() const;
    int getMinValueInArray() const;
    void abs();
    DataArrayInt *computeAbs() const;
    void applyLin(int a, int b, int compoId);
    void applyLin(int a, int b);
    void applyInv(int numerator);
    DataArrayInt *negate() const;
    void applyDivideBy(int val);
    void applyModulus(int val);
    void applyRModulus(int val);
    void applyPow(int val);
    void applyRPow(int val);
    DataArrayInt *findIdsInRange(int vmin, int vmax) const;
    DataArrayInt *findIdsNotInRange(int vmin, int vmax) const;
    DataArrayInt *findIdsStrictlyNegative() const;
    bool checkAllIdsInRange(int vmin, int vmax) const;
    static DataArrayInt *Aggregate(const DataArrayInt *a1, const DataArrayInt *a2, int offsetA2);
    static DataArrayInt *Meld(const DataArrayInt *a1, const DataArrayInt *a2);
    static DataArrayInt *MakePartition(const std::vector<const DataArrayInt *>& groups, int newNb, std::vector< std::vector<int> >& fidsOfGroups);
    static DataArrayInt *BuildUnion(const std::vector<const DataArrayInt *>& arr);
    static DataArrayInt *BuildIntersection(const std::vector<const DataArrayInt *>& arr);
    static DataArrayInt *FindPermutationFromFirstToSecond(const DataArrayInt *ids1, const DataArrayInt *ids2);
    DataArrayInt *buildComplement(int nbOfElement) const;
    DataArrayInt *buildSubstraction(const DataArrayInt *other) const;
    DataArrayInt *buildSubstractionOptimized(const DataArrayInt *other) const;
    DataArrayInt *buildUnion(const DataArrayInt *other) const;
    DataArrayInt *buildIntersection(const DataArrayInt *other) const;
    DataArrayInt *buildUnique() const;
    DataArrayInt *buildUniqueNotSorted() const;
    DataArrayInt *deltaShiftIndex() const;
    void computeOffsets();
    void computeOffsetsFull();
    DataArrayInt *buildExplicitArrByRanges(const DataArrayInt *offsets) const;
    DataArrayInt *findRangeIdForEachTuple(const DataArrayInt *ranges) const;
    DataArrayInt *findIdInRangeForEachTuple(const DataArrayInt *ranges) const;
    void sortEachPairToMakeALinkedList();
    DataArrayInt *duplicateEachTupleNTimes(int nbTimes) const;
    DataArrayInt *getDifferentValues() const;
    static DataArrayInt *Add(const DataArrayInt *a1, const DataArrayInt *a2);
    void addEqual(const DataArrayInt *other);
    static DataArrayInt *Substract(const DataArrayInt *a1, const DataArrayInt *a2);
    void substractEqual(const DataArrayInt *other);
    static DataArrayInt *Multiply(const DataArrayInt *a1, const DataArrayInt *a2);
    void multiplyEqual(const DataArrayInt *other);
    static DataArrayInt *Divide(const DataArrayInt *a1, const DataArrayInt *a2);
    void divideEqual(const DataArrayInt *other);
    static DataArrayInt *Modulus(const DataArrayInt *a1, const DataArrayInt *a2);
    void modulusEqual(const DataArrayInt *other);
    static DataArrayInt *Pow(const DataArrayInt *a1, const DataArrayInt *a2);
    void powEqual(const DataArrayInt *other);
    MCAuto<DataArrayInt> fromLinkedListOfPairToList() const;
    MCAuto<DataArrayInt> findIdsGreaterOrEqualTo(int val) const;
    MCAuto<DataArrayInt> findIdsGreaterThan(int val) const;
    MCAuto<DataArrayInt> findIdsLowerOrEqualTo(int val) const;
    MCAuto<DataArrayInt> findIdsLowerThan(int val) const;
    MCAuto<DataArrayInt> selectPartDef(const PartDefinition* pd) const;
    MCAuto<DataArrayDouble> convertToDblArr() const;
    MCAuto<DataArrayFloat> convertToFloatArr() const;
  public:
    static DataArrayInt *Range(int begin, int end, int step);
    %extend
    {
      DataArrayInt()
        {
          return DataArrayInt::New();
        }

      static DataArrayInt *New(PyObject *elt0, PyObject *nbOfTuples=0, PyObject *nbOfComp=0)
      {
        const char *msgBase="MEDCoupling::DataArrayInt::New : Available API are : \n-DataArrayInt.New()\n-DataArrayInt.New([1,3,4])\n-DataArrayInt.New([1,3,4],3)\n-DataArrayInt.New([1,3,4,5],2,2)\n-DataArrayInt.New([1,3,4,5,7,8],3,2)\n-DataArrayInt.New([(1,3),(4,5),(7,8)])\n-DataArrayInt.New(5)\n-DataArrayInt.New(5,2)";
        std::string msg(msgBase);
#ifdef WITH_NUMPY
        msg+="\n-DataArrayInt.New(numpy array with dtype=int32)";
#endif
        msg+=" !";
        if(PyList_Check(elt0) || PyTuple_Check(elt0))
          {
            if(nbOfTuples)
              {
                if(PyInt_Check(nbOfTuples))
                  {
                    int nbOfTuples1=PyInt_AS_LONG(nbOfTuples);
                    if(nbOfTuples1<0)
                      throw INTERP_KERNEL::Exception("DataArrayInt::New : should be a positive set of allocated memory !");
                    if(nbOfComp)
                      {
                        if(PyInt_Check(nbOfComp))
                          {//DataArrayInt.New([1,3,4,5],2,2)
                            int nbOfCompo=PyInt_AS_LONG(nbOfComp);
                            if(nbOfCompo<0)
                              throw INTERP_KERNEL::Exception("DataArrayInt::New : should be a positive number of components !");
                            MCAuto<DataArrayInt> ret=DataArrayInt::New();
                            std::vector<int> tmp=fillArrayWithPyListInt2(elt0,nbOfTuples1,nbOfCompo);
                            ret->alloc(nbOfTuples1,nbOfCompo); std::copy(tmp.begin(),tmp.end(),ret->getPointer());
                            return ret.retn();
                          }
                        else
                          throw INTERP_KERNEL::Exception(msg.c_str());
                      }
                    else
                      {//DataArrayInt.New([1,3,4],3)
                        MCAuto<DataArrayInt> ret=DataArrayInt::New();
                        int tmpp1=-1;
                        std::vector<int> tmp=fillArrayWithPyListInt2(elt0,nbOfTuples1,tmpp1);
                        ret->alloc(nbOfTuples1,tmpp1); std::copy(tmp.begin(),tmp.end(),ret->getPointer());
                        return ret.retn();
                      }
                  }
                else
                  throw INTERP_KERNEL::Exception(msg.c_str());
              }
            else
              {// DataArrayInt.New([1,3,4])
                MCAuto<DataArrayInt> ret=DataArrayInt::New();
                int tmpp1=-1,tmpp2=-1;
                std::vector<int> tmp=fillArrayWithPyListInt2(elt0,tmpp1,tmpp2);
                ret->alloc(tmpp1,tmpp2); std::copy(tmp.begin(),tmp.end(),ret->getPointer());
                return ret.retn();
              }
          }
        else if(PyInt_Check(elt0))
          {
            int nbOfTuples1=PyInt_AS_LONG(elt0);
            if(nbOfTuples1<0)
              throw INTERP_KERNEL::Exception("DataArrayInt::New : should be a positive set of allocated memory !");
            if(nbOfTuples)
              {
                if(!nbOfComp)
                  {
                    if(PyInt_Check(nbOfTuples))
                      {//DataArrayInt.New(5,2)
                        int nbOfCompo=PyInt_AS_LONG(nbOfTuples);
                        if(nbOfCompo<0)
                          throw INTERP_KERNEL::Exception("DataArrayInt::New : should be a positive number of components !");
                        MCAuto<DataArrayInt> ret=DataArrayInt::New();
                        ret->alloc(nbOfTuples1,nbOfCompo);
                        return ret.retn();
                      }
                    else
                      throw INTERP_KERNEL::Exception(msg.c_str());
                  }
                else
                  throw INTERP_KERNEL::Exception(msg.c_str());
              }
            else
              {//DataArrayInt.New(5)
                MCAuto<DataArrayInt> ret=DataArrayInt::New();
                ret->alloc(nbOfTuples1,1);
                return ret.retn();
              }
          }
#ifdef WITH_NUMPY
        else if(PyArray_Check(elt0) && nbOfTuples==NULL && nbOfComp==NULL)
          {//DataArrayInt.New(numpyArray)
            return BuildNewInstance<DataArrayInt,int>(elt0,NPY_INT32,&PyCallBackDataArrayInt_RefType,"INT32");
          }
#endif
        else
          throw INTERP_KERNEL::Exception(msg.c_str());
        throw INTERP_KERNEL::Exception(msg.c_str());//to make g++ happy
      }

      DataArrayInt(PyObject *elt0, PyObject *nbOfTuples=0, PyObject *nbOfComp=0)
        {
          return MEDCoupling_DataArrayInt_New__SWIG_1(elt0,nbOfTuples,nbOfComp);
        }
      
      std::string __str__() const
      {
        return self->reprNotTooLong();
      }

      int __len__() const
      {
        if(self->isAllocated())
          {
            return self->getNumberOfTuples();
          }
        else
          {
            throw INTERP_KERNEL::Exception("DataArrayInt::__len__ : Instance is NOT allocated !");
          }
      }

      int __int__() const
      {
        return self->intValue();
      }

      DataArrayIntIterator *__iter__()
      {
        return self->iterator();
      }
   
      PyObject *accumulate() const
      {
        int sz=self->getNumberOfComponents();
        INTERP_KERNEL::AutoPtr<int> tmp=new int[sz];
        self->accumulate(tmp);
        return convertIntArrToPyList(tmp,sz);
      }

      DataArrayInt *accumulatePerChunck(PyObject *indexArr) const
      {
        int sw,sz,val;
        std::vector<int> val2;
        const int *bg=convertIntStarLikePyObjToCppIntStar(indexArr,sw,sz,val,val2);
        return self->accumulatePerChunck(bg,bg+sz);
      }

      DataArrayInt *findIdsEqualTuple(PyObject *inputTuple) const
      {
        int sw,sz,val;
        std::vector<int> val2;
        const int *bg(convertIntStarLikePyObjToCppIntStar(inputTuple,sw,sz,val,val2));
        return self->findIdsEqualTuple(bg,bg+sz);
      }

      DataArrayInt *findIdForEach(PyObject *vals) const
      {
        int sw,sz,val;
        std::vector<int> val2;
        const int *bg(convertIntStarLikePyObjToCppIntStar(vals,sw,sz,val,val2));
        MCAuto<DataArrayInt> ret(self->findIdForEach(bg,bg+sz));
        return ret.retn();
      }

      PyObject *splitInBalancedSlices(int nbOfSlices) const
      {
        std::vector< std::pair<int,int> > slcs(self->splitInBalancedSlices(nbOfSlices));
        PyObject *ret=PyList_New(slcs.size());
        for(std::size_t i=0;i<slcs.size();i++)
          PyList_SetItem(ret,i,PySlice_New(PyInt_FromLong(slcs[i].first),PyInt_FromLong(slcs[i].second),PyInt_FromLong(1)));
        return ret;
      }

      DataArrayInt *buildExplicitArrOfSliceOnScaledArr(PyObject *slic) const
      {
        if(!PySlice_Check(slic))
          throw INTERP_KERNEL::Exception("DataArrayInt::buildExplicitArrOfSliceOnScaledArr (wrap) : expecting a pyslice as second (first) parameter !");
        Py_ssize_t strt=2,stp=2,step=2;
        GetIndicesOfSliceExplicitely(slic,&strt,&stp,&step,"DataArrayInt::buildExplicitArrOfSliceOnScaledArr (wrap) : the input slice is invalid !");
        if(strt==std::numeric_limits<int>::max() || stp==std::numeric_limits<int>::max())
          throw INTERP_KERNEL::Exception("DataArrayInt::buildExplicitArrOfSliceOnScaledArr (wrap) : the input slice contains some unknowns that can't be determined in static method ! Call DataArray::getSlice (non static) instead !");
        return self->buildExplicitArrOfSliceOnScaledArr(strt,stp,step);
      }

      PyObject *getMinMaxValues() const
      {
        int a,b;
        self->getMinMaxValues(a,b);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyInt_FromLong(a));
        PyTuple_SetItem(ret,1,PyInt_FromLong(b));
        return ret;
      }
   
      static PyObject *ConvertIndexArrayToO2N(int nbOfOldTuples, PyObject *arr, PyObject *arrI)
      {
        int newNbOfTuples=-1;
        int szArr,szArrI,sw,iTypppArr,iTypppArrI;
        std::vector<int> stdvecTyyppArr,stdvecTyyppArrI;
        const int *arrPtr=convertIntStarLikePyObjToCppIntStar(arr,sw,szArr,iTypppArr,stdvecTyyppArr);
        const int *arrIPtr=convertIntStarLikePyObjToCppIntStar(arrI,sw,szArrI,iTypppArrI,stdvecTyyppArrI);
        DataArrayInt *ret0=MEDCoupling::DataArrayInt::ConvertIndexArrayToO2N(nbOfOldTuples,arrPtr,arrIPtr,arrIPtr+szArrI,newNbOfTuples);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,SWIG_NewPointerObj((void*)ret0,SWIGTYPE_p_MEDCoupling__DataArrayInt,SWIG_POINTER_OWN | 0));
        PyTuple_SetItem(ret,1,PyInt_FromLong(newNbOfTuples));
        return ret;
      }

      static DataArrayInt *CheckAndPreparePermutation(PyObject *arr)
      {
        MCAuto<DataArrayInt> ret(DataArrayInt::New());
        int szArr,sw,iTypppArr;
        std::vector<int> stdvecTyyppArr;
        const int *arrPtr(convertIntStarLikePyObjToCppIntStar(arr,sw,szArr,iTypppArr,stdvecTyyppArr));
        int *pt(MEDCoupling::DataArrayInt::CheckAndPreparePermutation(arrPtr,arrPtr+szArr));
        ret->useArray(pt,true,MEDCoupling::DeallocType::C_DEALLOC,szArr,1);
        return ret.retn();
      }

      void setValues(PyObject *li, PyObject *nbOfTuples=0, PyObject *nbOfComp=0)
      {
        const char *msg="MEDCoupling::DataArrayInt::setValues : Available API are : \n-DataArrayInt.setValues([1,3,4])\n-DataArrayInt.setValues([1,3,4],3)\n-DataArrayInt.setValues([1,3,4,5],2,2)\n-DataArrayInt.New(5)\n !";
        if(PyList_Check(li) || PyTuple_Check(li))
          {
            if(nbOfTuples && nbOfTuples != Py_None)
              {
                if(PyInt_Check(nbOfTuples))
                  {
                    int nbOfTuples1=PyInt_AS_LONG(nbOfTuples);
                    if(nbOfTuples<0)
                      throw INTERP_KERNEL::Exception("DataArrayInt::setValue : should be a positive set of allocated memory !");
                    if(nbOfComp && nbOfComp != Py_None)
                      {
                        if(PyInt_Check(nbOfComp))
                          {//DataArrayInt.setValues([1,3,4,5],2,2)
                            int nbOfCompo=PyInt_AS_LONG(nbOfComp);
                            if(nbOfCompo<0)
                              throw INTERP_KERNEL::Exception("DataArrayInt::setValue : should be a positive number of components !");
                            std::vector<int> tmp=fillArrayWithPyListInt2(li,nbOfTuples1,nbOfCompo);
                            self->alloc(nbOfTuples1,nbOfCompo); std::copy(tmp.begin(),tmp.end(),self->getPointer());
                          }
                        else
                          throw INTERP_KERNEL::Exception(msg);
                      }
                    else
                      {//DataArrayInt.setValues([1,3,4],3)
                        int tmpp1=-1;
                        std::vector<int> tmp=fillArrayWithPyListInt2(li,nbOfTuples1,tmpp1);
                        self->alloc(nbOfTuples1,tmpp1); std::copy(tmp.begin(),tmp.end(),self->getPointer());
                      }
                  }
                else
                  throw INTERP_KERNEL::Exception(msg);
              }
            else
              {// DataArrayInt.setValues([1,3,4])
                int tmpp1=-1,tmpp2=-1;
                std::vector<int> tmp=fillArrayWithPyListInt2(li,tmpp1,tmpp2);
                self->alloc(tmpp1,tmpp2); std::copy(tmp.begin(),tmp.end(),self->getPointer());
              }
          }
        else
          throw INTERP_KERNEL::Exception(msg);
      }

      PyObject *getValues() const
      {
        const int *vals=self->getConstPointer();
        return convertIntArrToPyList(vals,self->getNbOfElems());
      }

#ifdef WITH_NUMPY
      PyObject *toNumPyArray() // not const. It is not a bug !
      {
        return ToNumPyArray<DataArrayInt,int>(self,NPY_INT32,"DataArrayInt");
      }
#endif

      PyObject *isEqualIfNotWhy(const DataArrayInt& other) const
      {
        std::string ret1;
        bool ret0=self->isEqualIfNotWhy(other,ret1);
        PyObject *ret=PyTuple_New(2);
        PyObject *ret0Py=ret0?Py_True:Py_False;
        Py_XINCREF(ret0Py);
        PyTuple_SetItem(ret,0,ret0Py);
        PyTuple_SetItem(ret,1,PyString_FromString(ret1.c_str()));
        return ret;
      }

      PyObject *getValuesAsTuple() const
      {
        const int *vals=self->getConstPointer();
        int nbOfComp=self->getNumberOfComponents();
        int nbOfTuples=self->getNumberOfTuples();
        return convertIntArrToPyListOfTuple(vals,nbOfComp,nbOfTuples);
      }

      static PyObject *MakePartition(PyObject *gps, int newNb)
      {
        std::vector<const DataArrayInt *> groups;
        std::vector< std::vector<int> > fidsOfGroups;
        convertFromPyObjVectorOfObj<const MEDCoupling::DataArrayInt *>(gps,SWIGTYPE_p_MEDCoupling__DataArrayInt,"DataArrayInt",groups);
        MEDCoupling::DataArrayInt *ret0=MEDCoupling::DataArrayInt::MakePartition(groups,newNb,fidsOfGroups);
        PyObject *ret = PyList_New(2);
        PyList_SetItem(ret,0,SWIG_NewPointerObj(SWIG_as_voidptr(ret0),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        int sz=fidsOfGroups.size();
        PyObject *ret1 = PyList_New(sz);
        for(int i=0;i<sz;i++)
          PyList_SetItem(ret1,i,convertIntArrToPyList2(fidsOfGroups[i]));
        PyList_SetItem(ret,1,ret1);
        return ret;
      }

      void transformWithIndArr(PyObject *li)
      {
        void *da=0;
        int res1(SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 ));
        if (!SWIG_IsOK(res1))
          {
            int res2(SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__MapII, 0 |  0 ));
            if(SWIG_IsOK(res2))
              {
                MapII *m=reinterpret_cast<MapII *>(da);
                self->transformWithIndArr(*m);
              }
            else
              {
                int size;
                INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
                self->transformWithIndArr(tmp,tmp+size);
              }
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            self->transformWithIndArr(da2->getConstPointer(),da2->getConstPointer()+da2->getNbOfElems());
          }
      }

      DataArrayInt *findIdsEqualList(PyObject *obj)
      {
        int sw;
        int singleVal;
        std::vector<int> multiVal;
        std::pair<int, std::pair<int,int> > slic;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        convertIntStarOrSliceLikePyObjToCpp(obj,self->getNumberOfTuples(),sw,singleVal,multiVal,slic,daIntTyypp);
        switch(sw)
          {
          case 1:
            return self->findIdsEqualList(&singleVal,&singleVal+1);
          case 2:
            return self->findIdsEqualList(&multiVal[0],&multiVal[0]+multiVal.size());
          case 4:
            return self->findIdsEqualList(daIntTyypp->begin(),daIntTyypp->end());
          default:
            throw INTERP_KERNEL::Exception("DataArrayInt::findIdsEqualList : unrecognized type entered, expected list of int, tuple of int or DataArrayInt !");
          }
      }

      DataArrayInt *findIdsNotEqualList(PyObject *obj)
      {
        int sw;
        int singleVal;
        std::vector<int> multiVal;
        std::pair<int, std::pair<int,int> > slic;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        convertIntStarOrSliceLikePyObjToCpp(obj,self->getNumberOfTuples(),sw,singleVal,multiVal,slic,daIntTyypp);
        switch(sw)
          {
          case 1:
            return self->findIdsNotEqualList(&singleVal,&singleVal+1);
          case 2:
            return self->findIdsNotEqualList(&multiVal[0],&multiVal[0]+multiVal.size());
          case 4:
            return self->findIdsNotEqualList(daIntTyypp->begin(),daIntTyypp->end());
          default:
            throw INTERP_KERNEL::Exception("DataArrayInt::findIdsNotEqualList : unrecognized type entered, expected list of int, tuple of int or DataArrayInt !");
          }
      }

      PyObject *splitByValueRange(PyObject *li) const
      {
        DataArrayInt *ret0=0,*ret1=0,*ret2=0;
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            self->splitByValueRange(tmp,(int *)tmp+size,ret0,ret1,ret2);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            self->splitByValueRange(da2->begin(),da2->end(),ret0,ret1,ret2);
          }
        PyObject *ret = PyList_New(3);
        PyList_SetItem(ret,0,SWIG_NewPointerObj(SWIG_as_voidptr(ret0),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        PyList_SetItem(ret,1,SWIG_NewPointerObj(SWIG_as_voidptr(ret1),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        PyList_SetItem(ret,2,SWIG_NewPointerObj(SWIG_as_voidptr(ret2),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return ret;
      }

      DataArrayInt *transformWithIndArrR(PyObject *li) const
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            return self->transformWithIndArrR(tmp,tmp+size);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            return self->transformWithIndArrR(da2->getConstPointer(),da2->getConstPointer()+da2->getNbOfElems());
          }
      }

      DataArrayInt *renumberAndReduce(PyObject *li, int newNbOfTuple)
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberAndReduce(tmp,newNbOfTuple);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            int size=self->getNumberOfTuples();
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberAndReduce(da2->getConstPointer(),newNbOfTuple);
          }
      }

      DataArrayInt *renumber(PyObject *li)
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumber(tmp);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            int size=self->getNumberOfTuples();
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumber(da2->getConstPointer());
          }
      }

      DataArrayInt *renumberR(PyObject *li)
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberR(tmp);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            int size=self->getNumberOfTuples();
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberR(da2->getConstPointer());
          }
      }

      void setSelectedComponents(const DataArrayInt *a, PyObject *li)
      {
        std::vector<int> tmp;
        convertPyToNewIntArr3(li,tmp);
        self->setSelectedComponents(a,tmp);
      }

      PyObject *explodeComponents() const
      {
        std::vector< MCAuto<DataArrayInt> > retCpp(self->explodeComponents());
        std::size_t sz(retCpp.size());
        PyObject *res(PyList_New(sz));
        for(std::size_t i=0;i<sz;i++)
          PyList_SetItem(res,i,SWIG_NewPointerObj(SWIG_as_voidptr(retCpp[i].retn()),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return res;
      }

      PyObject *getTuple(int tupleId)
      {
        int sz=self->getNumberOfComponents();
        INTERP_KERNEL::AutoPtr<int> tmp=new int[sz];
        self->getTuple(tupleId,tmp);
        return convertIntArrToPyList(tmp,sz);
      }

      PyObject *changeSurjectiveFormat(int targetNb) const
      {
        DataArrayInt *arr=0;
        DataArrayInt *arrI=0;
        self->changeSurjectiveFormat(targetNb,arr,arrI);
        PyObject *res = PyList_New(2);
        PyList_SetItem(res,0,SWIG_NewPointerObj((void*)arr,SWIGTYPE_p_MEDCoupling__DataArrayInt,SWIG_POINTER_OWN | 0));
        PyList_SetItem(res,1,SWIG_NewPointerObj((void*)arrI,SWIGTYPE_p_MEDCoupling__DataArrayInt,SWIG_POINTER_OWN | 0));
        return res;
      }

      static DataArrayInt *Meld(PyObject *li)
      {
        std::vector<const DataArrayInt *> tmp;
        convertFromPyObjVectorOfObj<const MEDCoupling::DataArrayInt *>(li,SWIGTYPE_p_MEDCoupling__DataArrayInt,"DataArrayInt",tmp);
        return DataArrayInt::Meld(tmp);
      }

      static DataArrayInt *Aggregate(PyObject *li)
      {
        std::vector<const DataArrayInt *> tmp;
        convertFromPyObjVectorOfObj<const MEDCoupling::DataArrayInt *>(li,SWIGTYPE_p_MEDCoupling__DataArrayInt,"DataArrayInt",tmp);
        return DataArrayInt::Aggregate(tmp);
      }

      static DataArrayInt *AggregateIndexes(PyObject *li)
      {
        std::vector<const DataArrayInt *> tmp;
        convertFromPyObjVectorOfObj<const MEDCoupling::DataArrayInt *>(li,SWIGTYPE_p_MEDCoupling__DataArrayInt,"DataArrayInt",tmp);
        return DataArrayInt::AggregateIndexes(tmp);
      }

      static DataArrayInt *BuildUnion(PyObject *li)
      {
        std::vector<const DataArrayInt *> tmp;
        convertFromPyObjVectorOfObj<const MEDCoupling::DataArrayInt *>(li,SWIGTYPE_p_MEDCoupling__DataArrayInt,"DataArrayInt",tmp);
        return DataArrayInt::BuildUnion(tmp);
      }

      static DataArrayInt *BuildIntersection(PyObject *li)
      {
        std::vector<const DataArrayInt *> tmp;
        convertFromPyObjVectorOfObj<const MEDCoupling::DataArrayInt *>(li,SWIGTYPE_p_MEDCoupling__DataArrayInt,"DataArrayInt",tmp);
        return DataArrayInt::BuildIntersection(tmp);
      }

      PyObject *getMaxValue() const
      {
        int tmp;
        int r1=self->getMaxValue(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyInt_FromLong(r1));
        PyTuple_SetItem(ret,1,PyInt_FromLong(tmp));
        return ret;
      }
    
      PyObject *getMaxAbsValue(std::size_t& tupleId) const
      {
      	std::size_t tmp;
        int r1=self->getMaxAbsValue(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyInt_FromLong(r1));
        PyTuple_SetItem(ret,1,PyInt_FromLong(tmp));
        return ret;
      }

      PyObject *getMinValue() const
      {
        int tmp;
        int r1=self->getMinValue(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyInt_FromLong(r1));
        PyTuple_SetItem(ret,1,PyInt_FromLong(tmp));
        return ret;
      }

      int index(PyObject *obj) const
      {
        int nbOfCompo=self->getNumberOfComponents();
        switch(nbOfCompo)
          {
          case 1:
            {
              if(PyInt_Check(obj))
                {
                  int val=(int)PyInt_AS_LONG(obj);
                  return self->findIdFirstEqual(val);
                }
              else
                throw INTERP_KERNEL::Exception("DataArrayInt::index : 'this' contains one component and trying to find an element which is not an integer !");
            }
          default:
            {
              std::vector<int> arr;
              convertPyToNewIntArr3(obj,arr);
              return self->findIdFirstEqualTuple(arr);
            }
          }
      }

      bool __contains__(PyObject *obj) const
      {
        int nbOfCompo=self->getNumberOfComponents();
        switch(nbOfCompo)
          {
          case 0:
            return false;
          case 1:
            {
              if(PyInt_Check(obj))
                {
                  int val=(int)PyInt_AS_LONG(obj);
                  return self->presenceOfValue(val);
                }
              else
                throw INTERP_KERNEL::Exception("DataArrayInt::__contains__ : 'this' contains one component and trying to find an element which is not an integer !");
            }
          default:
            {
              std::vector<int> arr;
              convertPyToNewIntArr3(obj,arr);
              return self->presenceOfTuple(arr);
            }
          }
      }

      PyObject *__getitem__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in DataArrayInt::__getitem__ !";
        const char msg2[]="DataArrayInt::__getitem__ : Mismatch of slice values in 2nd parameter (components) !";
        self->checkAllocated();
        int nbOfTuples=self->getNumberOfTuples();
        int nbOfComponents=self->getNumberOfComponents();
        int it1,ic1;
        std::vector<int> vt1,vc1;
        std::pair<int, std::pair<int,int> > pt1,pc1;
        DataArrayInt *dt1=0,*dc1=0;
        int sw;
        convertObjToPossibleCpp3(obj,nbOfTuples,nbOfComponents,sw,it1,ic1,vt1,vc1,pt1,pc1,dt1,dc1);
        MCAuto<DataArrayInt> ret;
        switch(sw)
          {
          case 1:
            {
              if(nbOfComponents==1)
                return PyInt_FromLong(self->getIJSafe(it1,0));
              return SWIG_NewPointerObj(SWIG_as_voidptr(self->selectByTupleIdSafe(&it1,&it1+1)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          case 2:
            return SWIG_NewPointerObj(SWIG_as_voidptr(self->selectByTupleIdSafe(&vt1[0],&vt1[0]+vt1.size())),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
          case 3:
            return SWIG_NewPointerObj(SWIG_as_voidptr(self->selectByTupleIdSafeSlice(pt1.first,pt1.second.first,pt1.second.second)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
          case 4:
            return SWIG_NewPointerObj(SWIG_as_voidptr(self->selectByTupleIdSafe(dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems())),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
          case 5:
            return PyInt_FromLong(self->getIJSafe(it1,ic1));
          case 6:
            {
              ret=self->selectByTupleIdSafe(&vt1[0],&vt1[0]+vt1.size());
              std::vector<int> v2(1,ic1);
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret->keepSelectedComponents(v2)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          case 7:
            {
              ret=self->selectByTupleIdSafeSlice(pt1.first,pt1.second.first,pt1.second.second);
              std::vector<int> v2(1,ic1);
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret->keepSelectedComponents(v2)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          case 8:
            {
              ret=self->selectByTupleIdSafe(dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems());
              std::vector<int> v2(1,ic1);
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret->keepSelectedComponents(v2)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          case 9:
            {
              ret=self->selectByTupleIdSafe(&it1,&it1+1);
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret->keepSelectedComponents(vc1)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          case 10:
            {
              ret=self->selectByTupleIdSafe(&vt1[0],&vt1[0]+vt1.size());
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret->keepSelectedComponents(vc1)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          case 11:
            {
              ret=self->selectByTupleIdSafeSlice(pt1.first,pt1.second.first,pt1.second.second);
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret->keepSelectedComponents(vc1)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          case 12:
            {
              ret=self->selectByTupleIdSafe(dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems());
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret->keepSelectedComponents(vc1)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          case 13:
            {
              ret=self->selectByTupleIdSafe(&it1,&it1+1);
              int nbOfComp=DataArray::GetNumberOfItemGivenBESRelative(pc1.first,pc1.second.first,pc1.second.second,msg2);
              std::vector<int> v2(nbOfComp);
              for(int i=0;i<nbOfComp;i++)
                v2[i]=pc1.first+i*pc1.second.second;
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret->keepSelectedComponents(v2)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          case 14:
            {
              ret=self->selectByTupleIdSafe(&vt1[0],&vt1[0]+vt1.size());
              int nbOfComp=DataArray::GetNumberOfItemGivenBESRelative(pc1.first,pc1.second.first,pc1.second.second,msg2);
              std::vector<int> v2(nbOfComp);
              for(int i=0;i<nbOfComp;i++)
                v2[i]=pc1.first+i*pc1.second.second;
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret->keepSelectedComponents(v2)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          case 15:
            {
              ret=self->selectByTupleIdSafeSlice(pt1.first,pt1.second.first,pt1.second.second);
              int nbOfComp=DataArray::GetNumberOfItemGivenBESRelative(pc1.first,pc1.second.first,pc1.second.second,msg2);
              std::vector<int> v2(nbOfComp);
              for(int i=0;i<nbOfComp;i++)
                v2[i]=pc1.first+i*pc1.second.second;
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret->keepSelectedComponents(v2)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          case 16:
            {
              ret=self->selectByTupleIdSafe(dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems());
              int nbOfComp=DataArray::GetNumberOfItemGivenBESRelative(pc1.first,pc1.second.first,pc1.second.second,msg2);
              std::vector<int> v2(nbOfComp);
              for(int i=0;i<nbOfComp;i++)
                v2[i]=pc1.first+i*pc1.second.second;
              return SWIG_NewPointerObj(SWIG_as_voidptr(ret->keepSelectedComponents(v2)),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 );
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__setitem__(PyObject *obj, PyObject *value)
      {
        self->checkAllocated();
        const char msg[]="Unexpected situation in __setitem__ !";
        int nbOfTuples=self->getNumberOfTuples();
        int nbOfComponents=self->getNumberOfComponents();
        int sw1,sw2;
        int i1;
        std::vector<int> v1;
        DataArrayInt *d1=0;
        DataArrayIntTuple *dd1=0;
        convertIntStarLikePyObjToCpp(value,sw1,i1,v1,d1,dd1);
        int it1,ic1;
        std::vector<int> vt1,vc1;
        std::pair<int, std::pair<int,int> > pt1,pc1;
        DataArrayInt *dt1=0,*dc1=0;
        convertObjToPossibleCpp3(obj,nbOfTuples,nbOfComponents,sw2,it1,ic1,vt1,vc1,pt1,pc1,dt1,dc1);
        MCAuto<DataArrayInt> tmp;
        switch(sw2)
          {
          case 1:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,it1,it1+1,1,0,nbOfComponents,1);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues1(tmp,it1,it1+1,1,0,nbOfComponents,1,false);
                  return self;
                case 3:
                  self->setPartOfValues1(d1,it1,it1+1,1,0,nbOfComponents,1);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues1(tmp,it1,it1+1,1,0,nbOfComponents,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 2:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,&vt1[0],&vt1[0]+vt1.size(),0,nbOfComponents,1);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues3(tmp,&vt1[0],&vt1[0]+vt1.size(),0,nbOfComponents,1,false);
                  return self;
                case 3:
                  self->setPartOfValues3(d1,&vt1[0],&vt1[0]+vt1.size(),0,nbOfComponents,1);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues3(tmp,&vt1[0],&vt1[0]+vt1.size(),0,nbOfComponents,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 3:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,pt1.first,pt1.second.first,pt1.second.second,0,nbOfComponents,1);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues1(tmp,pt1.first,pt1.second.first,pt1.second.second,0,nbOfComponents,1,false);
                  return self;
                case 3:
                  self->setPartOfValues1(d1,pt1.first,pt1.second.first,pt1.second.second,0,nbOfComponents,1);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues1(tmp,pt1.first,pt1.second.first,pt1.second.second,0,nbOfComponents,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 4:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),0,nbOfComponents,1);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues3(tmp,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),0,nbOfComponents,1,false);
                  return self;
                case 3:
                  self->setPartOfValues3(d1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),0,nbOfComponents,1);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues3(tmp,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),0,nbOfComponents,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 5:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,it1,it1+1,1,ic1,ic1+1,1);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues1(tmp,it1,it1+1,1,ic1,ic1+1,1,false);
                  return self;
                case 3:
                  self->setPartOfValues1(d1,it1,it1+1,1,ic1,ic1+1,1);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues1(tmp,it1,it1+1,1,ic1,ic1+1,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 6:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,&vt1[0],&vt1[0]+vt1.size(),ic1,ic1+1,1);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues3(tmp,&vt1[0],&vt1[0]+vt1.size(),ic1,ic1+1,1,false);
                  return self;
                case 3:
                  self->setPartOfValues3(d1,&vt1[0],&vt1[0]+vt1.size(),ic1,ic1+1,1);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues3(tmp,&vt1[0],&vt1[0]+vt1.size(),ic1,ic1+1,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 7:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,pt1.first,pt1.second.first,pt1.second.second,ic1,ic1+1,1);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues1(tmp,pt1.first,pt1.second.first,pt1.second.second,ic1,ic1+1,1,false);
                  return self;
                case 3:
                  self->setPartOfValues1(d1,pt1.first,pt1.second.first,pt1.second.second,ic1,ic1+1,1);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues1(tmp,pt1.first,pt1.second.first,pt1.second.second,ic1,ic1+1,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 8:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),ic1,ic1+1,1);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues3(tmp,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),ic1,ic1+1,1,false);
                  return self;
                case 3:
                  self->setPartOfValues3(d1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),ic1,ic1+1,1);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues3(tmp,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),ic1,ic1+1,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 9:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple2(i1,&it1,&it1+1,&vc1[0],&vc1[0]+vc1.size());
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues2(tmp,&it1,&it1+1,&vc1[0],&vc1[0]+vc1.size(),false);
                  return self;
                case 3:
                  self->setPartOfValues2(d1,&it1,&it1+1,&vc1[0],&vc1[0]+vc1.size());
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues2(tmp,&it1,&it1+1,&vc1[0],&vc1[0]+vc1.size());
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 10:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple2(i1,&vt1[0],&vt1[0]+vt1.size(),&vc1[0],&vc1[0]+vc1.size());
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues2(tmp,&vt1[0],&vt1[0]+vt1.size(),&vc1[0],&vc1[0]+vc1.size(),false);
                  return self;
                case 3:
                  self->setPartOfValues2(d1,&vt1[0],&vt1[0]+vt1.size(),&vc1[0],&vc1[0]+vc1.size());
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues2(tmp,&vt1[0],&vt1[0]+vt1.size(),&vc1[0],&vc1[0]+vc1.size());
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 11:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple4(i1,pt1.first,pt1.second.first,pt1.second.second,&vc1[0],&vc1[0]+vc1.size());
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues4(tmp,pt1.first,pt1.second.first,pt1.second.second,&vc1[0],&vc1[0]+vc1.size(),false);
                  return self;
                case 3:
                  self->setPartOfValues4(d1,pt1.first,pt1.second.first,pt1.second.second,&vc1[0],&vc1[0]+vc1.size());
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues4(tmp,pt1.first,pt1.second.first,pt1.second.second,&vc1[0],&vc1[0]+vc1.size());
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 12:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple2(i1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),&vc1[0],&vc1[0]+vc1.size());
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues2(tmp,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),&vc1[0],&vc1[0]+vc1.size(),false);
                  return self;
                case 3:
                  self->setPartOfValues2(d1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),&vc1[0],&vc1[0]+vc1.size());
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues2(tmp,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),&vc1[0],&vc1[0]+vc1.size());
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 13:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,it1,it1+1,1,pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues1(tmp,it1,it1+1,1,pc1.first,pc1.second.first,pc1.second.second,false);
                  return self;
                case 3:
                  self->setPartOfValues1(d1,it1,it1+1,1,pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues1(tmp,it1,it1+1,1,pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 14:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,&vt1[0],&vt1[0]+vt1.size(),pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues3(tmp,&vt1[0],&vt1[0]+vt1.size(),pc1.first,pc1.second.first,pc1.second.second,false);
                  return self;
                case 3:
                  self->setPartOfValues3(d1,&vt1[0],&vt1[0]+vt1.size(),pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues3(tmp,&vt1[0],&vt1[0]+vt1.size(),pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 15:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,pt1.first,pt1.second.first,pt1.second.second,pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues1(tmp,pt1.first,pt1.second.first,pt1.second.second,pc1.first,pc1.second.first,pc1.second.second,false);
                  return self;
                case 3:
                  self->setPartOfValues1(d1,pt1.first,pt1.second.first,pt1.second.second,pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues1(tmp,pt1.first,pt1.second.first,pt1.second.second,pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 16:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                case 2:
                  tmp=DataArrayInt::New();
                  tmp->useArray(&v1[0],false,DeallocType::CPP_DEALLOC,1,v1.size());
                  self->setPartOfValues3(tmp,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),pc1.first,pc1.second.first,pc1.second.second,false);
                  return self;
                case 3:
                  self->setPartOfValues3(d1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                case 4:
                  tmp=dd1->buildDAInt(1,self->getNumberOfComponents());
                  self->setPartOfValues3(tmp,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
        return self;
      }

      DataArrayInt *__neg__() const
      {
        return self->negate();
      }
 
      DataArrayInt *__add__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __add__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyLin(1,val);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Add(self,aaaa);
            }
          case 3:
            {
              return DataArrayInt::Add(self,a);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Add(self,aaaa);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__radd__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __radd__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyLin(1,val);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Add(self,aaaa);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Add(self,aaaa);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      PyObject *___iadd___(PyObject *trueSelf, PyObject *obj)
      {
        const char msg[]="Unexpected situation in __iadd__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              self->applyLin(1,val);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 2:
            {
              MCAuto<DataArrayInt> bb=DataArrayInt::New(); bb->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              self->addEqual(bb);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 3:
            {
              self->addEqual(a);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              self->addEqual(aaaa);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__sub__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __sub__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyLin(1,-val);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Substract(self,aaaa);
            }
          case 3:
            {
              return DataArrayInt::Substract(self,a);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Substract(self,aaaa);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__rsub__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __rsub__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyLin(-1,val);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Substract(aaaa,self);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Substract(aaaa,self);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      PyObject *___isub___(PyObject *trueSelf, PyObject *obj)
      {
        const char msg[]="Unexpected situation in __isub__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              self->applyLin(1,-val);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 2:
            {
              MCAuto<DataArrayInt> bb=DataArrayInt::New(); bb->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              self->substractEqual(bb);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 3:
            {
              self->substractEqual(a);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              self->substractEqual(aaaa);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__mul__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __mul__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyLin(val,0);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Multiply(self,aaaa);
            }
          case 3:
            {
              return DataArrayInt::Multiply(self,a);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Multiply(self,aaaa);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__rmul__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __rmul__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyLin(val,0);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Multiply(self,aaaa);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Multiply(self,aaaa);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      PyObject *___imul___(PyObject *trueSelf, PyObject *obj)
      {
        const char msg[]="Unexpected situation in __imul__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              self->applyLin(val,0);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 2:
            {
              MCAuto<DataArrayInt> bb=DataArrayInt::New(); bb->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              self->multiplyEqual(bb);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 3:
            {
              self->multiplyEqual(a);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              self->multiplyEqual(aaaa);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__div__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __div__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyDivideBy(val);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Divide(self,aaaa);
            }
          case 3:
            {
              return DataArrayInt::Divide(self,a);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Divide(self,aaaa);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__rdiv__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __rdiv__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyInv(val);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Divide(aaaa,self);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Divide(aaaa,self);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      PyObject *___idiv___(PyObject *trueSelf, PyObject *obj)
      {
        const char msg[]="Unexpected situation in __idiv__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              self->applyDivideBy(val);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 2:
            {
              MCAuto<DataArrayInt> bb=DataArrayInt::New(); bb->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              self->divideEqual(bb);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 3:
            {
              self->divideEqual(a);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              self->divideEqual(aaaa);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__mod__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __mod__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyModulus(val);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Modulus(self,aaaa);
            }
          case 3:
            {
              return DataArrayInt::Modulus(self,a);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Modulus(self,aaaa);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__rmod__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __rmod__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyRModulus(val);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Modulus(aaaa,self);
            }
          case 3:
            {
              return DataArrayInt::Modulus(a,self);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Modulus(aaaa,self);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      PyObject *___imod___(PyObject *trueSelf, PyObject *obj)
      {
        const char msg[]="Unexpected situation in __imod__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              self->applyModulus(val);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 3:
            {
              self->modulusEqual(a);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              self->modulusEqual(aaaa);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__pow__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __pow__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyPow(val);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Pow(self,aaaa);
            }
          case 3:
            {
              return DataArrayInt::Pow(self,a);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Pow(self,aaaa);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      DataArrayInt *__rpow__(PyObject *obj)
      {
        const char msg[]="Unexpected situation in __rpow__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              MCAuto<DataArrayInt> ret=self->deepCopy();
              ret->applyRPow(val);
              return ret.retn();
            }
          case 2:
            {
              MCAuto<DataArrayInt> aaaa=DataArrayInt::New(); aaaa->useArray(&aa[0],false,DeallocType::CPP_DEALLOC,1,(int)aa.size());
              return DataArrayInt::Pow(aaaa,self);
            }
          case 3:
            {
              return DataArrayInt::Pow(a,self);
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              return DataArrayInt::Pow(aaaa,self);
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }
   
      PyObject *___ipow___(PyObject *trueSelf, PyObject *obj)
      {
        const char msg[]="Unexpected situation in __ipow__ !";
        int val;
        DataArrayInt *a;
        std::vector<int> aa;
        DataArrayIntTuple *aaa;
        int sw;
        convertIntStarLikePyObjToCpp(obj,sw,val,aa,a,aaa);
        switch(sw)
          {
          case 1:
            {
              self->applyPow(val);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 3:
            {
              self->powEqual(a);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          case 4:
            {
              MCAuto<DataArrayInt> aaaa=aaa->buildDAInt(1,self->getNumberOfComponents());
              self->powEqual(aaaa);
              Py_XINCREF(trueSelf);
              return trueSelf;
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }

      std::string __repr__() const
      {
        std::ostringstream oss;
        self->reprQuickOverview(oss);
        return oss.str();
      }
      
      void pushBackValsSilent(PyObject *li)
      {
        int szArr,sw,iTypppArr;
        std::vector<int> stdvecTyyppArr;
        const int *tmp=convertIntStarLikePyObjToCppIntStar(li,sw,szArr,iTypppArr,stdvecTyyppArr);
        self->pushBackValsSilent(tmp,tmp+szArr);
      }
      
      PyObject *partitionByDifferentValues() const
      {
        std::vector<int> ret1;
        std::vector<DataArrayInt *> ret0=self->partitionByDifferentValues(ret1);
        std::size_t sz=ret0.size();
        PyObject *pyRet=PyTuple_New(2);
        PyObject *pyRet0=PyList_New((int)sz);
        PyObject *pyRet1=PyList_New((int)sz);
        for(std::size_t i=0;i<sz;i++)
          {
            PyList_SetItem(pyRet0,i,SWIG_NewPointerObj(SWIG_as_voidptr(ret0[i]),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
            PyList_SetItem(pyRet1,i,PyInt_FromLong(ret1[i]));
          }
        PyTuple_SetItem(pyRet,0,pyRet0);
        PyTuple_SetItem(pyRet,1,pyRet1);
        return pyRet;
      }
      
      PyObject *findIdsRangesInListOfIds(const DataArrayInt *listOfIds) const
      {
        DataArrayInt *ret0=0,*ret1=0;
        self->findIdsRangesInListOfIds(listOfIds,ret0,ret1);
        PyObject *pyRet=PyTuple_New(2);
        PyTuple_SetItem(pyRet,0,SWIG_NewPointerObj(SWIG_as_voidptr(ret0),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        PyTuple_SetItem(pyRet,1,SWIG_NewPointerObj(SWIG_as_voidptr(ret1),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return pyRet;
      }

      PyObject *isRange() const
      {
        int a(0),b(0),c(0);
        bool ret(self->isRange(a,b,c));
        PyObject *pyRet=PyTuple_New(2);
        PyObject *ret0Py=ret?Py_True:Py_False,*ret1Py(0);
        Py_XINCREF(ret0Py);
        PyTuple_SetItem(pyRet,0,ret0Py);
        if(ret)
          ret1Py=PySlice_New(PyInt_FromLong(a),PyInt_FromLong(b),PyInt_FromLong(c));
        else
          {
            ret1Py=Py_None;
            Py_XINCREF(ret1Py);
          }
        PyTuple_SetItem(pyRet,1,ret1Py);
        return pyRet;
      }

      static bool RemoveIdsFromIndexedArrays(PyObject *li, DataArrayInt *arr, DataArrayInt *arrIndx, int offsetForRemoval=0) throw(INTERP_KERNEL::Exception)
      {
        int sw;
        int singleVal;
        std::vector<int> multiVal;
        std::pair<int, std::pair<int,int> > slic;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        if(!arrIndx)
          throw INTERP_KERNEL::Exception("DataArrayInt::RemoveIdsFromIndexedArrays : null pointer as arrIndex !");
        convertIntStarOrSliceLikePyObjToCpp(li,arrIndx->getNumberOfTuples()-1,sw,singleVal,multiVal,slic,daIntTyypp);
        switch(sw)
          {
          case 1:
            return DataArrayInt::RemoveIdsFromIndexedArrays(&singleVal,&singleVal+1,arr,arrIndx,offsetForRemoval);
          case 2:
            return DataArrayInt::RemoveIdsFromIndexedArrays(&multiVal[0],&multiVal[0]+multiVal.size(),arr,arrIndx,offsetForRemoval);
          case 4:
            return DataArrayInt::RemoveIdsFromIndexedArrays(daIntTyypp->begin(),daIntTyypp->end(),arr,arrIndx,offsetForRemoval);
          default:
            throw INTERP_KERNEL::Exception("MEDCouplingUMesh::RemoveIdsFromIndexedArrays : unrecognized type entered, expected list of int, tuple of int or DataArrayInt !");
          }
      }

      static PyObject *ExtractFromIndexedArrays(PyObject *li, const DataArrayInt *arrIn, const DataArrayInt *arrIndxIn) throw(INTERP_KERNEL::Exception)
      {
        DataArrayInt *arrOut=0,*arrIndexOut=0;
        int sw;
        int singleVal;
        std::vector<int> multiVal;
        std::pair<int, std::pair<int,int> > slic;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        if(!arrIndxIn)
          throw INTERP_KERNEL::Exception("DataArrayInt::ExtractFromIndexedArrays : null pointer as arrIndxIn !");
        convertIntStarOrSliceLikePyObjToCpp(li,arrIndxIn->getNumberOfTuples()-1,sw,singleVal,multiVal,slic,daIntTyypp);
        switch(sw)
          {
          case 1:
            {
              DataArrayInt::ExtractFromIndexedArrays(&singleVal,&singleVal+1,arrIn,arrIndxIn,arrOut,arrIndexOut);
              break;
            }
          case 2:
            {
              DataArrayInt::ExtractFromIndexedArrays(&multiVal[0],&multiVal[0]+multiVal.size(),arrIn,arrIndxIn,arrOut,arrIndexOut);
              break;
            }
          case 4:
            {
              DataArrayInt::ExtractFromIndexedArrays(daIntTyypp->begin(),daIntTyypp->end(),arrIn,arrIndxIn,arrOut,arrIndexOut);
              break;
            }
          default:
            throw INTERP_KERNEL::Exception("DataArrayInt::ExtractFromIndexedArrays : unrecognized type entered, expected list of int, tuple of int or DataArrayInt !");
          }
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,SWIG_NewPointerObj(SWIG_as_voidptr(arrOut),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        PyTuple_SetItem(ret,1,SWIG_NewPointerObj(SWIG_as_voidptr(arrIndexOut),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return ret;
      }

      static PyObject *ExtractFromIndexedArraysSlice(int strt, int stp, int step, const DataArrayInt *arrIn, const DataArrayInt *arrIndxIn) throw(INTERP_KERNEL::Exception)
      {
        DataArrayInt *arrOut=0,*arrIndexOut=0;
        DataArrayInt::ExtractFromIndexedArraysSlice(strt,stp,step,arrIn,arrIndxIn,arrOut,arrIndexOut);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,SWIG_NewPointerObj(SWIG_as_voidptr(arrOut),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        PyTuple_SetItem(ret,1,SWIG_NewPointerObj(SWIG_as_voidptr(arrIndexOut),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return ret;
      }

      static PyObject *ExtractFromIndexedArraysSlice(PyObject *slic, const DataArrayInt *arrIn, const DataArrayInt *arrIndxIn) throw(INTERP_KERNEL::Exception)
      {
        if(!PySlice_Check(slic))
          throw INTERP_KERNEL::Exception("ExtractFromIndexedArraysSlice (wrap) : the first param is not a pyslice !");
        Py_ssize_t strt=2,stp=2,step=2;
        if(!arrIndxIn)
          throw INTERP_KERNEL::Exception("ExtractFromIndexedArraysSlice (wrap) : last array is null !");
        arrIndxIn->checkAllocated();
        if(arrIndxIn->getNumberOfComponents()!=1)
          throw INTERP_KERNEL::Exception("ExtractFromIndexedArraysSlice (wrap) : number of components of last argument must be equal to one !");
        GetIndicesOfSlice(slic,arrIndxIn->getNumberOfTuples(),&strt,&stp,&step,"ExtractFromIndexedArraysSlice (wrap) : Invalid slice regarding nb of elements !");
        DataArrayInt *arrOut=0,*arrIndexOut=0;
        DataArrayInt::ExtractFromIndexedArraysSlice(strt,stp,step,arrIn,arrIndxIn,arrOut,arrIndexOut);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,SWIG_NewPointerObj(SWIG_as_voidptr(arrOut),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        PyTuple_SetItem(ret,1,SWIG_NewPointerObj(SWIG_as_voidptr(arrIndexOut),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return ret;
      }

      static PyObject *SetPartOfIndexedArrays(PyObject *li,
                                              const DataArrayInt *arrIn, const DataArrayInt *arrIndxIn,
                                              const DataArrayInt *srcArr, const DataArrayInt *srcArrIndex) throw(INTERP_KERNEL::Exception)
      {
        DataArrayInt *arrOut=0,*arrIndexOut=0;
        int sw;
        int singleVal;
        std::vector<int> multiVal;
        std::pair<int, std::pair<int,int> > slic;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        if(!arrIndxIn)
          throw INTERP_KERNEL::Exception("DataArrayInt::SetPartOfIndexedArrays : null pointer as arrIndex !");
        convertIntStarOrSliceLikePyObjToCpp(li,arrIndxIn->getNumberOfTuples()-1,sw,singleVal,multiVal,slic,daIntTyypp);
        switch(sw)
          {
          case 1:
            {
              DataArrayInt::SetPartOfIndexedArrays(&singleVal,&singleVal+1,arrIn,arrIndxIn,srcArr,srcArrIndex,arrOut,arrIndexOut);
              break;
            }
          case 2:
            {
              DataArrayInt::SetPartOfIndexedArrays(&multiVal[0],&multiVal[0]+multiVal.size(),arrIn,arrIndxIn,srcArr,srcArrIndex,arrOut,arrIndexOut);
              break;
            }
          case 4:
            {
              DataArrayInt::SetPartOfIndexedArrays(daIntTyypp->begin(),daIntTyypp->end(),arrIn,arrIndxIn,srcArr,srcArrIndex,arrOut,arrIndexOut);
              break;
            }
          default:
            throw INTERP_KERNEL::Exception("DataArrayInt::SetPartOfIndexedArrays : unrecognized type entered, expected list of int, tuple of int or DataArrayInt !");
          }
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,SWIG_NewPointerObj(SWIG_as_voidptr(arrOut),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        PyTuple_SetItem(ret,1,SWIG_NewPointerObj(SWIG_as_voidptr(arrIndexOut),SWIGTYPE_p_MEDCoupling__DataArrayInt, SWIG_POINTER_OWN | 0 ));
        return ret;
      }

      static void SetPartOfIndexedArraysSameIdx(PyObject *li, DataArrayInt *arrIn, const DataArrayInt *arrIndxIn,
                                                const DataArrayInt *srcArr, const DataArrayInt *srcArrIndex) throw(INTERP_KERNEL::Exception)
      {
        int sw;
        int singleVal;
        std::vector<int> multiVal;
        std::pair<int, std::pair<int,int> > slic;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        if(!arrIndxIn)
          throw INTERP_KERNEL::Exception("DataArrayInt::SetPartOfIndexedArraysSameIdx : null pointer as arrIndex !");
        convertIntStarOrSliceLikePyObjToCpp(li,arrIndxIn->getNumberOfTuples()-1,sw,singleVal,multiVal,slic,daIntTyypp);
        switch(sw)
          {
          case 1:
            {
              DataArrayInt::SetPartOfIndexedArraysSameIdx(&singleVal,&singleVal+1,arrIn,arrIndxIn,srcArr,srcArrIndex);
              break;
            }
          case 2:
            {
              DataArrayInt::SetPartOfIndexedArraysSameIdx(&multiVal[0],&multiVal[0]+multiVal.size(),arrIn,arrIndxIn,srcArr,srcArrIndex);
              break;
            }
          case 4:
            {
              DataArrayInt::SetPartOfIndexedArraysSameIdx(daIntTyypp->begin(),daIntTyypp->end(),arrIn,arrIndxIn,srcArr,srcArrIndex);
              break;
            }
          default:
            throw INTERP_KERNEL::Exception("DataArrayInt::SetPartOfIndexedArraysSameIdx : unrecognized type entered, expected list of int, tuple of int or DataArrayInt !");
          }
      }

    } // end extent
  };

  class DataArrayIntTuple;

  class DataArrayIntIterator
  {
  public:
    DataArrayIntIterator(DataArrayInt *da);
    ~DataArrayIntIterator();
    %extend
    {
      PyObject *next()
      {
        DataArrayIntTuple *ret=self->nextt();
        if(ret)
          return SWIG_NewPointerObj(SWIG_as_voidptr(ret),SWIGTYPE_p_MEDCoupling__DataArrayIntTuple,SWIG_POINTER_OWN | 0);
        else
          {
            PyErr_SetString(PyExc_StopIteration,"No more data.");
            return 0;
          }
      }
    }
  };

  class DataArrayIntTuple
  {
  public:
    int getNumberOfCompo() const;
    DataArrayInt *buildDAInt(int nbOfTuples, int nbOfCompo) const;
    %extend
    {
      std::string __str__() const
      {
        return self->repr();
      }

      int __int__() const
      {
        return self->intValue();
      }

      DataArrayInt *buildDAInt()
      {
        return self->buildDAInt(1,self->getNumberOfCompo());
      }

      PyObject *___iadd___(PyObject *trueSelf, PyObject *obj)
      {
        MCAuto<DataArrayInt> ret=self->buildDAInt(1,self->getNumberOfCompo());
        MEDCoupling_DataArrayInt____iadd___(ret,0,obj);
        Py_XINCREF(trueSelf);
        return trueSelf;
      }
  
      PyObject *___isub___(PyObject *trueSelf, PyObject *obj)
      {
        MCAuto<DataArrayInt> ret=self->buildDAInt(1,self->getNumberOfCompo());
        MEDCoupling_DataArrayInt____isub___(ret,0,obj);
        Py_XINCREF(trueSelf);
        return trueSelf;
      }
  
      PyObject *___imul___(PyObject *trueSelf, PyObject *obj)
      {
        MCAuto<DataArrayInt> ret=self->buildDAInt(1,self->getNumberOfCompo());
        MEDCoupling_DataArrayInt____imul___(ret,0,obj);
        Py_XINCREF(trueSelf);
        return trueSelf;
      }
      PyObject *___idiv___(PyObject *trueSelf, PyObject *obj)
      {
        MCAuto<DataArrayInt> ret=self->buildDAInt(1,self->getNumberOfCompo());
        MEDCoupling_DataArrayInt____idiv___(ret,0,obj);
        Py_XINCREF(trueSelf);
        return trueSelf;
      }

      PyObject *___imod___(PyObject *trueSelf, PyObject *obj)
      {
        MCAuto<DataArrayInt> ret=self->buildDAInt(1,self->getNumberOfCompo());
        MEDCoupling_DataArrayInt____imod___(ret,0,obj);
        Py_XINCREF(trueSelf);
        return trueSelf;
      }

      PyObject *__len__()
      {
        return PyInt_FromLong(self->getNumberOfCompo());
      }
  
      PyObject *__getitem__(PyObject *obj)
      {
        const char msg2[]="DataArrayIntTuple::__getitem__ : Mismatch of slice values in 2nd parameter (components) !";
        int sw;
        int singleVal;
        std::vector<int> multiVal;
        std::pair<int, std::pair<int,int> > slic;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        const int *pt=self->getConstPointer();
        int nbc=self->getNumberOfCompo();
        convertIntStarOrSliceLikePyObjToCppWithNegIntInterp(obj,nbc,sw,singleVal,multiVal,slic,daIntTyypp);
        switch(sw)
          {
          case 1:
            {
              if(singleVal>=nbc)
                {
                  std::ostringstream oss;
                  oss << "Requesting for id " << singleVal << " having only " << nbc << " components !";
                  PyErr_SetString(PyExc_StopIteration,oss.str().c_str());
                  return 0;
                }
              if(singleVal>=0)
                return PyInt_FromLong(pt[singleVal]);
              else
                {
                  if(nbc+singleVal>0)
                    return PyInt_FromLong(pt[nbc+singleVal]);
                  else
                    {
                      std::ostringstream oss;
                      oss << "Requesting for id " << singleVal << " having only " << nbc << " components !";
                      throw INTERP_KERNEL::Exception(oss.str().c_str());
                    }
                }
            }
          case 2:
            {
              PyObject *t=PyTuple_New(multiVal.size());
              for(int j=0;j<(int)multiVal.size();j++)
                {
                  int cid=multiVal[j];
                  if(cid>=nbc)
                    {
                      std::ostringstream oss;
                      oss << "Requesting for id #" << cid << " having only " << nbc << " components !";
                      throw INTERP_KERNEL::Exception(oss.str().c_str());
                    }
                  PyTuple_SetItem(t,j,PyInt_FromLong(pt[cid]));
                }
              return t;
            }
          case 3:
            {
              int sz=DataArray::GetNumberOfItemGivenBES(slic.first,slic.second.first,slic.second.second,msg2);
              PyObject *t=PyTuple_New(sz);
              for(int j=0;j<sz;j++)
                PyTuple_SetItem(t,j,PyInt_FromLong(pt[slic.first+j*slic.second.second]));
              return t;
            }
          default:
            throw INTERP_KERNEL::Exception("DataArrayIntTuple::__getitem__ : unrecognized type entered !");
          }
      }

      DataArrayIntTuple *__setitem__(PyObject *obj, PyObject *value)
      {
        const char msg[]="DataArrayIntTuple::__setitem__ : unrecognized type entered, int, slice, list<int>, tuple<int> !";
        const char msg2[]="DataArrayIntTuple::__setitem__ : Mismatch of slice values in 2nd parameter (components) !";
        int sw1,sw2;
        int singleValV;
        std::vector<int> multiValV;
        std::pair<int, std::pair<int,int> > slicV;
        MEDCoupling::DataArrayIntTuple *daIntTyyppV=0;
        int nbc=self->getNumberOfCompo();
        convertObjToPossibleCpp22(value,nbc,sw1,singleValV,multiValV,slicV,daIntTyyppV);
        int singleVal;
        std::vector<int> multiVal;
        std::pair<int, std::pair<int,int> > slic;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        int *pt=self->getPointer();
        convertIntStarOrSliceLikePyObjToCppWithNegIntInterp(obj,nbc,sw2,singleVal,multiVal,slic,daIntTyypp);
        switch(sw2)
          {
          case 1:
            {
              if(singleVal>=nbc)
                {
                  std::ostringstream oss;
                  oss << "Requesting for setting id # " << singleVal << " having only " << nbc << " components !";
                  throw INTERP_KERNEL::Exception(oss.str().c_str());
                }
              switch(sw1)
                {
                case 1:
                  {
                    pt[singleVal]=singleValV;
                    return self;
                  }
                case 2:
                  {
                    if(multiValV.size()!=1)
                      {
                        std::ostringstream oss;
                        oss << "Requesting for setting id # " << singleVal << " with a list or tuple with size != 1 ! ";
                        throw INTERP_KERNEL::Exception(oss.str().c_str());
                      }
                    pt[singleVal]=multiValV[0];
                    return self;
                  }
                case 4:
                  {
                    pt[singleVal]=daIntTyyppV->getConstPointer()[0];
                    return self;
                  }
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
            }
          case 2:
            {
              switch(sw1)
                {
                case 1:
                  {
                    for(std::vector<int>::const_iterator it=multiVal.begin();it!=multiVal.end();it++)
                      {
                        if(*it>=nbc)
                          {
                            std::ostringstream oss;
                            oss << "Requesting for setting id # " << *it << " having only " << nbc << " components !";
                            throw INTERP_KERNEL::Exception(oss.str().c_str());
                          }
                        pt[*it]=singleValV;
                      }
                    return self;
                  }
                case 2:
                  {
                    if(multiVal.size()!=multiValV.size())
                      {
                        std::ostringstream oss;
                        oss << "Mismatch length of during assignment : " << multiValV.size() << " != " << multiVal.size() << " !";
                        throw INTERP_KERNEL::Exception(oss.str().c_str());
                      }
                    for(int i=0;i<(int)multiVal.size();i++)
                      {
                        int pos=multiVal[i];
                        if(pos>=nbc)
                          {
                            std::ostringstream oss;
                            oss << "Requesting for setting id # " << pos << " having only " << nbc << " components !";
                            throw INTERP_KERNEL::Exception(oss.str().c_str());
                          }
                        pt[multiVal[i]]=multiValV[i];
                      }
                    return self;
                  }
                case 4:
                  {
                    const int *ptV=daIntTyyppV->getConstPointer();
                    if(nbc>daIntTyyppV->getNumberOfCompo())
                      {
                        std::ostringstream oss;
                        oss << "Mismatch length of during assignment : " << nbc << " != " << daIntTyyppV->getNumberOfCompo() << " !";
                        throw INTERP_KERNEL::Exception(oss.str().c_str());
                      }
                    std::copy(ptV,ptV+nbc,pt);
                    return self;
                  }
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
            }
          case 3:
            {
              int sz=DataArray::GetNumberOfItemGivenBES(slic.first,slic.second.first,slic.second.second,msg2);
              switch(sw1)
                {
                case 1:
                  {
                    for(int j=0;j<sz;j++)
                      pt[slic.first+j*slic.second.second]=singleValV;
                    return self;
                  }
                case 2:
                  {
                    if(sz!=(int)multiValV.size())
                      {
                        std::ostringstream oss;
                        oss << "Mismatch length of during assignment : " << multiValV.size() << " != " << sz << " !";
                        throw INTERP_KERNEL::Exception(oss.str().c_str());
                      }
                    for(int j=0;j<sz;j++)
                      pt[slic.first+j*slic.second.second]=multiValV[j];
                    return self;
                  }
                case 4:
                  {
                    const int *ptV=daIntTyyppV->getConstPointer();
                    if(sz>daIntTyyppV->getNumberOfCompo())
                      {
                        std::ostringstream oss;
                        oss << "Mismatch length of during assignment : " << nbc << " != " << daIntTyyppV->getNumberOfCompo() << " !";
                        throw INTERP_KERNEL::Exception(oss.str().c_str());
                      }
                    for(int j=0;j<sz;j++)
                      pt[slic.first+j*slic.second.second]=ptV[j];
                    return self;
                  }
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }
    }
  };

  class DataArrayChar : public DataArray
  {
  public:
    virtual DataArrayChar *buildEmptySpecializedDAChar() const;
    int getHashCode() const;
    bool empty() const;
    void deepCopyFrom(const DataArrayChar& other);
    void reserve(std::size_t nbOfElems);
    void pushBackSilent(char val);
    char popBackSilent();
    void pack() const;
    void allocIfNecessary(int nbOfTuple, int nbOfCompo);
    bool isEqual(const DataArrayChar& other) const;
    bool isEqualWithoutConsideringStr(const DataArrayChar& other) const;
    void reverse();
    void fillWithZero();
    void fillWithValue(char val);
    std::string repr() const;
    std::string reprZip() const;
    DataArrayInt *convertToIntArr() const;
    DataArrayChar *renumber(const int *old2New) const;
    DataArrayChar *renumberR(const int *new2Old) const;
    DataArrayChar *renumberAndReduce(const int *old2NewBg, int newNbOfTuple) const;
    bool isUniform(char val) const;
    void sort(bool asc=true);
    DataArrayChar *subArray(int tupleIdBg, int tupleIdEnd=-1) const;
    DataArrayChar *changeNbOfComponents(int newNbOfComp, char dftValue) const;
    void meldWith(const DataArrayChar *other);
    void setPartOfValuesAdv(const DataArrayChar *a, const DataArrayInt *tuplesSelec);
    char front() const;
    char back() const;
    void setIJ(int tupleId, int compoId, char newVal);
    void setIJSilent(int tupleId, int compoId, char newVal);
    char *getPointer();
    DataArrayInt *findIdsEqual(char val) const;
    DataArrayInt *findIdsNotEqual(char val) const;
    int findIdFirstEqualTuple(const std::vector<char>& tupl) const;
    bool presenceOfTuple(const std::vector<char>& tupl) const;
    char getMaxValue(int& tupleId) const;
    char getMaxValueInArray() const;
    char getMinValue(int& tupleId) const;
    char getMinValueInArray() const;
    DataArrayInt *findIdsInRange(char vmin, char vmax) const;
    static DataArrayChar *Aggregate(const DataArrayChar *a1, const DataArrayChar *a2);
    static DataArrayChar *Meld(const DataArrayChar *a1, const DataArrayChar *a2);
    %extend
    {
      int __len__() const
      {
        if(self->isAllocated())
          {
            return self->getNumberOfTuples();
          }
        else
          {
            throw INTERP_KERNEL::Exception("DataArrayChar::__len__ : Instance is NOT allocated !");
          }
      }
      
      PyObject *isEqualIfNotWhy(const DataArrayChar& other) const
      {
        std::string ret1;
        bool ret0=self->isEqualIfNotWhy(other,ret1);
        PyObject *ret=PyTuple_New(2);
        PyObject *ret0Py=ret0?Py_True:Py_False;
        Py_XINCREF(ret0Py);
        PyTuple_SetItem(ret,0,ret0Py);
        PyTuple_SetItem(ret,1,PyString_FromString(ret1.c_str()));
        return ret;
      }
      
      DataArrayChar *renumber(PyObject *li)
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumber(tmp);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            int size=self->getNumberOfTuples();
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumber(da2->getConstPointer());
          }
      }
      
      DataArrayChar *renumberR(PyObject *li)
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberR(tmp);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            int size=self->getNumberOfTuples();
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberR(da2->getConstPointer());
          }
      }
      
      DataArrayChar *renumberAndReduce(PyObject *li, int newNbOfTuple)
      {
        void *da=0;
        int res1=SWIG_ConvertPtr(li,&da,SWIGTYPE_p_MEDCoupling__DataArrayInt, 0 |  0 );
        if (!SWIG_IsOK(res1))
          {
            int size;
            INTERP_KERNEL::AutoPtr<int> tmp=convertPyToNewIntArr2(li,&size);
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberAndReduce(tmp,newNbOfTuple);
          }
        else
          {
            DataArrayInt *da2=reinterpret_cast< DataArrayInt * >(da);
            if(!da2)
              throw INTERP_KERNEL::Exception("Not null DataArrayInt instance expected !");
            da2->checkAllocated();
            int size=self->getNumberOfTuples();
            if(size!=self->getNumberOfTuples())
              {
                throw INTERP_KERNEL::Exception("Invalid list length ! Must be equal to number of tuples !");
              }
            return self->renumberAndReduce(da2->getConstPointer(),newNbOfTuple);
          }
      }
      
      static DataArrayChar *Aggregate(PyObject *dachs)
      {
        std::vector<const MEDCoupling::DataArrayChar *> tmp;
        convertFromPyObjVectorOfObj<const MEDCoupling::DataArrayChar *>(dachs,SWIGTYPE_p_MEDCoupling__DataArrayChar,"DataArrayChar",tmp);
        return DataArrayChar::Aggregate(tmp);
      }
      
      static DataArrayChar *Meld(PyObject *dachs)
      {
        std::vector<const MEDCoupling::DataArrayChar *> tmp;
        convertFromPyObjVectorOfObj<const MEDCoupling::DataArrayChar *>(dachs,SWIGTYPE_p_MEDCoupling__DataArrayChar,"DataArrayChar",tmp);
        return DataArrayChar::Meld(tmp);
      }
    }
  };
  
  class DataArrayByteIterator;

  class DataArrayByte : public DataArrayChar
  {
  public:
    static DataArrayByte *New();
    DataArrayByteIterator *iterator();
    DataArrayByte *performCopyOrIncrRef(bool deepCopy) const;
    char byteValue() const;
    %extend
    {
      DataArrayByte()
        {
          return DataArrayByte::New();
        }

      static DataArrayByte *New(PyObject *elt0, PyObject *nbOfTuples=0, PyObject *nbOfComp=0)
      {
        const char *msg="MEDCoupling::DataArrayByte::New : Available API are : \n-DataArrayByte.New()\n--DataArrayByte.New([1,3,4])\n-DataArrayByte.New([1,3,4],3)\n-DataArrayByte.New([1,3,4,5],2,2)\n-DataArrayByte.New(5)\n-DataArrayByte.New(5,2) !";
        if(PyList_Check(elt0) || PyTuple_Check(elt0))
          {
            if(nbOfTuples)
              {
                if(PyInt_Check(nbOfTuples))
                  {
                    int nbOfTuples1=PyInt_AS_LONG(nbOfTuples);
                    if(nbOfTuples1<0)
                      throw INTERP_KERNEL::Exception("DataArrayByte::New : should be a positive set of allocated memory !");
                    if(nbOfComp)
                      {
                        if(PyInt_Check(nbOfComp))
                          {//DataArrayByte.New([1,3,4,5],2,2)
                            int nbOfCompo=PyInt_AS_LONG(nbOfComp);
                            if(nbOfCompo<0)
                              throw INTERP_KERNEL::Exception("DataArrayByte::New : should be a positive number of components !");
                            MCAuto<DataArrayByte> ret=DataArrayByte::New();
                            std::vector<int> tmp=fillArrayWithPyListInt2(elt0,nbOfTuples1,nbOfCompo);
                            ret->alloc(nbOfTuples1,nbOfCompo); std::copy(tmp.begin(),tmp.end(),ret->getPointer());
                            return ret.retn();
                          }
                        else
                          throw INTERP_KERNEL::Exception(msg);
                      }
                    else
                      {//DataArrayByte.New([1,3,4],3)
                        MCAuto<DataArrayByte> ret=DataArrayByte::New();
                        int tmpp1=-1;
                        std::vector<int> tmp=fillArrayWithPyListInt2(elt0,nbOfTuples1,tmpp1);
                        ret->alloc(nbOfTuples1,tmpp1); std::copy(tmp.begin(),tmp.end(),ret->getPointer());
                        return ret.retn();
                      }
                  }
                else
                  throw INTERP_KERNEL::Exception(msg);
              }
            else
              {// DataArrayByte.New([1,3,4])
                MCAuto<DataArrayByte> ret=DataArrayByte::New();
                int tmpp1=-1,tmpp2=-1;
                std::vector<int> tmp=fillArrayWithPyListInt2(elt0,tmpp1,tmpp2);
                ret->alloc(tmpp1,tmpp2); std::copy(tmp.begin(),tmp.end(),ret->getPointer());
                return ret.retn();
              }
          }
        else if(PyInt_Check(elt0))
          {
            int nbOfTuples1=PyInt_AS_LONG(elt0);
            if(nbOfTuples1<0)
              throw INTERP_KERNEL::Exception("DataArrayByte::New : should be a positive set of allocated memory !");
            if(nbOfTuples)
              {
                if(!nbOfComp)
                  {
                    if(PyInt_Check(nbOfTuples))
                      {//DataArrayByte.New(5,2)
                        int nbOfCompo=PyInt_AS_LONG(nbOfTuples);
                        if(nbOfCompo<0)
                          throw INTERP_KERNEL::Exception("DataArrayByte::New : should be a positive number of components !");
                        MCAuto<DataArrayByte> ret=DataArrayByte::New();
                        ret->alloc(nbOfTuples1,nbOfCompo);
                        return ret.retn();
                      }
                    else
                      throw INTERP_KERNEL::Exception(msg);
                  }
                else
                  throw INTERP_KERNEL::Exception(msg);
              }
            else
              {//DataArrayByte.New(5)
                MCAuto<DataArrayByte> ret=DataArrayByte::New();
                ret->alloc(nbOfTuples1,1);
                return ret.retn();
              }
          }
#ifdef WITH_NUMPY
        else if(PyArray_Check(elt0) && nbOfTuples==NULL && nbOfComp==NULL)
          {//DataArrayDouble.New(numpyArray)
            return BuildNewInstance<DataArrayByte,char>(elt0,NPY_INT8,&PyCallBackDataArrayChar_RefType,"INT8");
          }
#endif
        else
          throw INTERP_KERNEL::Exception(msg);
      }

      DataArrayByte(PyObject *elt0, PyObject *nbOfTuples=0, PyObject *nbOfComp=0)
        {
          return MEDCoupling_DataArrayByte_New__SWIG_1(elt0,nbOfTuples,nbOfComp);
        }
   
      std::string __repr__() const
      {
        std::ostringstream oss;
        self->reprQuickOverview(oss);
        return oss.str();
      }
  
      int __int__() const
      {
        return (int) self->byteValue();
      }

      DataArrayByteIterator *__iter__()
      {
        return self->iterator();
      }

      int getIJ(int tupleId, int compoId) const
      {
        return (int)self->getIJ(tupleId,compoId);
      }
      
      int getIJSafe(int tupleId, int compoId) const
      {
        return (int)self->getIJSafe(tupleId,compoId);
      }

      std::string __str__() const
      {
        return self->repr();
      }

      PyObject *toStrList() const
      {
        const char *vals=self->getConstPointer();
        int nbOfComp=self->getNumberOfComponents();
        int nbOfTuples=self->getNumberOfTuples();
        return convertCharArrToPyListOfTuple(vals,nbOfComp,nbOfTuples);
      }
   
      bool presenceOfTuple(PyObject *tupl) const
      {
        int sz=-1,sw=-1;
        int ival=-1; std::vector<int> ivval;
        const int *pt=convertIntStarLikePyObjToCppIntStar(tupl,sw,sz,ival,ivval);
        std::vector<char> vals(sz);
        std::copy(pt,pt+sz,vals.begin());
        return self->presenceOfTuple(vals);
      }

      bool presenceOfValue(PyObject *vals) const
      {
        int sz=-1,sw=-1;
        int ival=-1; std::vector<int> ivval;
        const int *pt=convertIntStarLikePyObjToCppIntStar(vals,sw,sz,ival,ivval);
        std::vector<char> vals2(sz);
        std::copy(pt,pt+sz,vals2.begin());
        return self->presenceOfValue(vals2);
      }

      int findIdFirstEqual(PyObject *vals) const
      {
        int sz=-1,sw=-1;
        int ival=-1; std::vector<int> ivval;
        const int *pt=convertIntStarLikePyObjToCppIntStar(vals,sw,sz,ival,ivval);
        std::vector<char> vals2(sz);
        std::copy(pt,pt+sz,vals2.begin());
        return self->findIdFirstEqual(vals2);
      }

      int findIdFirstEqualTuple(PyObject *tupl) const
      {
        int sz=-1,sw=-1;
        int ival=-1; std::vector<int> ivval;
        const int *pt=convertIntStarLikePyObjToCppIntStar(tupl,sw,sz,ival,ivval);
        std::vector<char> vals(sz);
        std::copy(pt,pt+sz,vals.begin());
        return self->findIdFirstEqualTuple(vals);
      }

      int findIdSequence(PyObject *strOrListOfInt) const
      {
        int sz=-1,sw=-1;
        int ival=-1; std::vector<int> ivval;
        const int *pt=convertIntStarLikePyObjToCppIntStar(strOrListOfInt,sw,sz,ival,ivval);
        std::vector<char> vals(sz);
        std::copy(pt,pt+sz,vals.begin());
        return self->findIdSequence(vals);
      }

      PyObject *getTuple(int tupleId)
      {
        int sz=self->getNumberOfComponents();
        INTERP_KERNEL::AutoPtr<char> tmp=new char[sz];
        self->getTuple(tupleId,tmp);
        PyObject *ret=PyTuple_New(sz);
        for(int i=0;i<sz;i++) PyTuple_SetItem(ret,i,PyInt_FromLong((int)tmp[i]));
        return ret;
      }

      PyObject *getMaxValue() const
      {
        int tmp;
        int r1=(int)self->getMaxValue(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyInt_FromLong(r1));
        PyTuple_SetItem(ret,1,PyInt_FromLong(tmp));
        return ret;
      }

      PyObject *getMinValue() const
      {
        int tmp;
        int r1=(int)self->getMinValue(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyInt_FromLong(r1));
        PyTuple_SetItem(ret,1,PyInt_FromLong(tmp));
        return ret;
      }

      int index(PyObject *obj) const
      {
        int nbOfCompo=self->getNumberOfComponents();
        switch(nbOfCompo)
          {
          case 1:
            {
              if(PyInt_Check(obj))
                {
                  int val=(int)PyInt_AS_LONG(obj);
                  return self->findIdFirstEqual(val);
                }
              else
                throw INTERP_KERNEL::Exception("DataArrayByte::index : 'this' contains one component and trying to find an element which is not an integer !");
            }
          default:
            return MEDCoupling_DataArrayByte_findIdFirstEqualTuple(self,obj);
          }
      }

      bool __contains__(PyObject *obj) const
      {
        int nbOfCompo=self->getNumberOfComponents();
        switch(nbOfCompo)
          {
          case 0:
            return false;
          case 1:
            {
              if(PyInt_Check(obj))
                {
                  int val=(int)PyInt_AS_LONG(obj);
                  return self->presenceOfValue(val);
                }
              else
                throw INTERP_KERNEL::Exception("DataArrayByte::__contains__ : 'this' contains one component and trying to find an element which is not an integer !");
            }
          default:
            return MEDCoupling_DataArrayByte_presenceOfTuple(self,obj);
          }
      }
      
#ifdef WITH_NUMPY
      PyObject *toNumPyArray() // not const. It is not a bug !
      {
        return ToNumPyArray<DataArrayByte,char>(self,NPY_INT8,"DataArrayByte");
      }
#endif

      DataArrayByte *__setitem__(PyObject *obj, PyObject *value)
      {
        self->checkAllocated();
        const char msg[]="Unexpected situation in __setitem__ !";
        int nbOfTuples(self->getNumberOfTuples()),nbOfComponents(self->getNumberOfComponents());
        int sw1,sw2;
        int i1;
        std::vector<int> v1;
        DataArrayInt *d1=0;
        DataArrayIntTuple *dd1=0;
        convertIntStarLikePyObjToCpp(value,sw1,i1,v1,d1,dd1);
        int it1,ic1;
        std::vector<int> vt1,vc1;
        std::pair<int, std::pair<int,int> > pt1,pc1;
        DataArrayInt *dt1=0,*dc1=0;
        convertObjToPossibleCpp3(obj,nbOfTuples,nbOfComponents,sw2,it1,ic1,vt1,vc1,pt1,pc1,dt1,dc1);
        MCAuto<DataArrayInt> tmp;
        switch(sw2)
          {
          case 1:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,it1,it1+1,1,0,nbOfComponents,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 2:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,&vt1[0],&vt1[0]+vt1.size(),0,nbOfComponents,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 3:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,pt1.first,pt1.second.first,pt1.second.second,0,nbOfComponents,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 4:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),0,nbOfComponents,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 5:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,it1,it1+1,1,ic1,ic1+1,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 6:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,&vt1[0],&vt1[0]+vt1.size(),ic1,ic1+1,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 7:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,pt1.first,pt1.second.first,pt1.second.second,ic1,ic1+1,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 8:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),ic1,ic1+1,1);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 9:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple2(i1,&it1,&it1+1,&vc1[0],&vc1[0]+vc1.size());
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 10:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple2(i1,&vt1[0],&vt1[0]+vt1.size(),&vc1[0],&vc1[0]+vc1.size());
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 11:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple4(i1,pt1.first,pt1.second.first,pt1.second.second,&vc1[0],&vc1[0]+vc1.size());
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 12:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple2(i1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),&vc1[0],&vc1[0]+vc1.size());
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 13:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,it1,it1+1,1,pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 14:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,&vt1[0],&vt1[0]+vt1.size(),pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 15:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple1(i1,pt1.first,pt1.second.first,pt1.second.second,pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          case 16:
            {
              switch(sw1)
                {
                case 1:
                  self->setPartOfValuesSimple3(i1,dt1->getConstPointer(),dt1->getConstPointer()+dt1->getNbOfElems(),pc1.first,pc1.second.first,pc1.second.second);
                  return self;
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
              break;
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
        return self;
      }
    }
  };

  class DataArrayByteTuple;

  class DataArrayByteIterator
  {
  public:
    DataArrayByteIterator(DataArrayByte *da);
    ~DataArrayByteIterator();
  };

  class DataArrayByteTuple
  {
  public:
    std::string repr() const;
    DataArrayByte *buildDAByte(int nbOfTuples, int nbOfCompo) const;
    %extend
    {
      std::string __str__() const
      {
        return self->repr();
      }
      
      char __int__() const
      {
        return self->byteValue();
      }
      
      DataArrayByte *buildDAByte()
      {
        return self->buildDAByte(1,self->getNumberOfCompo());
      }
    }
  };
  
  class DataArrayAsciiCharIterator;
  
  class DataArrayAsciiChar : public DataArrayChar
  {
  public:
    static DataArrayAsciiChar *New();
    DataArrayAsciiCharIterator *iterator();
    DataArrayAsciiChar *performCopyOrIncrRef(bool deepCopy) const;
    char asciiCharValue() const;
    %extend
    {
      DataArrayAsciiChar()
        {
          return DataArrayAsciiChar::New();
        }

      static DataArrayAsciiChar *New(PyObject *elt0, PyObject *nbOfTuples=0, PyObject *nbOfComp=0)
      {
        const char *msg="MEDCoupling::DataArrayAsciiChar::New : Available API are : \n-DataArrayAsciiChar.New()\n-DataArrayAsciiChar.New([1,3,4])\n-DataArrayAsciiChar.New([\"abc\",\"de\",\"fghi\"])\n-DataArrayAsciiChar.New([\"abc\",\"de\",\"fghi\"],\"t\")\n-DataArrayAsciiChar.New([1,3,4],3)\n-DataArrayAsciiChar.New([1,3,4,5],2,2)\n-DataArrayAsciiChar.New(5)\n-DataArrayAsciiChar.New(5,2) !";
        if(PyList_Check(elt0) || PyTuple_Check(elt0))
          {
            if(nbOfTuples)
              {
                if(PyInt_Check(nbOfTuples))
                  {
                    int nbOfTuples1=PyInt_AS_LONG(nbOfTuples);
                    if(nbOfTuples1<0)
                      throw INTERP_KERNEL::Exception("DataArrayAsciiChar::New : should be a positive set of allocated memory !");
                    if(nbOfComp)
                      {
                        if(PyInt_Check(nbOfComp))
                          {//DataArrayAsciiChar.New([1,3,4,5],2,2)
                            int nbOfCompo=PyInt_AS_LONG(nbOfComp);
                            if(nbOfCompo<0)
                              throw INTERP_KERNEL::Exception("DataArrayAsciiChar::New : should be a positive number of components !");
                            MCAuto<DataArrayAsciiChar> ret=DataArrayAsciiChar::New();
                            std::vector<int> tmp=fillArrayWithPyListInt2(elt0,nbOfTuples1,nbOfCompo);
                            ret->alloc(nbOfTuples1,nbOfCompo); std::copy(tmp.begin(),tmp.end(),ret->getPointer());
                            return ret.retn();
                          }
                        else
                          throw INTERP_KERNEL::Exception(msg);
                      }
                    else
                      {//DataArrayAsciiChar.New([1,3,4],3)
                        MCAuto<DataArrayAsciiChar> ret=DataArrayAsciiChar::New();
                        int tmpp1=-1;
                        std::vector<int> tmp=fillArrayWithPyListInt2(elt0,nbOfTuples1,tmpp1);
                        ret->alloc(nbOfTuples1,tmpp1); std::copy(tmp.begin(),tmp.end(),ret->getPointer());
                        return ret.retn();
                      }
                  }
                else if(PyString_Check(nbOfTuples))
                  {
                    if(PyString_Size(nbOfTuples)!=1)
                      throw INTERP_KERNEL::Exception(msg);
                    //DataArrayAsciiChar.New(["abc","de","fghi"],"t")
                    std::vector<std::string> tmp;
                    if(fillStringVector(elt0,tmp))
                      return DataArrayAsciiChar::New(tmp,PyString_AsString(nbOfTuples)[0]);
                    else
                      throw INTERP_KERNEL::Exception(msg);
                  }
%#if PY_VERSION_HEX >= 0x03000000
                else if(PyUnicode_Check(nbOfTuples))
                  {
                    if(PyUnicode_GET_LENGTH(nbOfTuples)!=1)
                      throw INTERP_KERNEL::Exception(msg);
                    //DataArrayAsciiChar.New(["abc","de","fghi"],"t")
                    std::vector<std::string> tmp;
                    if(fillStringVector(elt0,tmp))
                      return DataArrayAsciiChar::New(tmp,PyUnicode_AsUTF8(nbOfTuples)[0]);
                    else
                      throw INTERP_KERNEL::Exception(msg);
                  }
%#endif
                else
                  throw INTERP_KERNEL::Exception(msg);
              }
            else
              {
                std::vector<std::string> tmmp;
                if(fillStringVector(elt0,tmmp))
                  //DataArrayAsciiChar.New(["abc","de","fghi"])
                  return DataArrayAsciiChar::New(tmmp,' ');
                else
                  {
                    // DataArrayAsciiChar.New([1,3,4])
                    MCAuto<DataArrayAsciiChar> ret=DataArrayAsciiChar::New();
                    int tmpp1=-1,tmpp2=-1;
                    std::vector<int> tmp=fillArrayWithPyListInt2(elt0,tmpp1,tmpp2);
                    ret->alloc(tmpp1,tmpp2); std::copy(tmp.begin(),tmp.end(),ret->getPointer());
                    return ret.retn();
                  }
              }
          }
        else if(PyInt_Check(elt0))
          {
            int nbOfTuples1=PyInt_AS_LONG(elt0);
            if(nbOfTuples1<0)
              throw INTERP_KERNEL::Exception("DataArrayAsciiChar::New : should be a positive set of allocated memory !");
            if(nbOfTuples)
              {
                if(!nbOfComp)
                  {
                    if(PyInt_Check(nbOfTuples))
                      {//DataArrayAsciiChar.New(5,2)
                        int nbOfCompo=PyInt_AS_LONG(nbOfTuples);
                        if(nbOfCompo<0)
                          throw INTERP_KERNEL::Exception("DataArrayAsciiChar::New : should be a positive number of components !");
                        MCAuto<DataArrayAsciiChar> ret=DataArrayAsciiChar::New();
                        ret->alloc(nbOfTuples1,nbOfCompo);
                        return ret.retn();
                      }
                    else
                      throw INTERP_KERNEL::Exception(msg);
                  }
                else
                  throw INTERP_KERNEL::Exception(msg);
              }
            else
              {//DataArrayAsciiChar.New(5)
                MCAuto<DataArrayAsciiChar> ret=DataArrayAsciiChar::New();
                ret->alloc(nbOfTuples1,1);
                return ret.retn();
              }
          }
        else
          throw INTERP_KERNEL::Exception(msg);
      }

      DataArrayAsciiChar(PyObject *elt0, PyObject *nbOfTuples=0, PyObject *nbOfComp=0)
        {
          return MEDCoupling_DataArrayAsciiChar_New__SWIG_1(elt0,nbOfTuples,nbOfComp);
        }

      std::string __repr__() const
      {
        std::ostringstream oss;
        self->reprQuickOverview(oss);
        return oss.str();
      }

      DataArrayAsciiCharIterator *__iter__()
      {
        return self->iterator();
      }

      std::string getIJ(int tupleId, int compoId) const
      {
        char tmp[2]; tmp[1]='\0';
        tmp[0]=self->getIJ(tupleId,compoId);
        return std::string(tmp);
      }
   
      std::string getIJSafe(int tupleId, int compoId) const
      {
        char tmp[2]; tmp[1]='\0';
        tmp[0]=self->getIJSafe(tupleId,compoId);
        return std::string(tmp);
      }

      std::string __str__() const
      {
        return self->repr();
      }

      PyObject *toStrList() const
      {
        const char *vals=self->getConstPointer();
        int nbOfComp=self->getNumberOfComponents();
        int nbOfTuples=self->getNumberOfTuples();
        return convertCharArrToPyListOfTuple(vals,nbOfComp,nbOfTuples);
      }

      bool presenceOfTuple(PyObject *tupl) const
      {
        if(PyString_Check(tupl))
          {
            Py_ssize_t sz=PyString_Size(tupl);
            std::vector<char> vals(sz);
            std::copy(PyString_AsString(tupl),PyString_AsString(tupl)+sz,vals.begin());
            return self->presenceOfTuple(vals);
          }
%#if PY_VERSION_HEX >= 0x03000000
        else if(PyUnicode_Check(tupl))
          {
            Py_ssize_t sz=PyUnicode_GET_LENGTH(tupl);
            std::vector<char> vals(sz);
            std::copy(PyUnicode_AsUTF8(tupl),PyUnicode_AsUTF8(tupl)+sz,vals.begin());
            return self->presenceOfTuple(vals);
          }
%#endif
        else
          throw INTERP_KERNEL::Exception("DataArrayAsciiChar::presenceOfTuple : only strings in input supported !");
      }
   
      bool presenceOfValue(PyObject *vals) const
      {
        if(PyString_Check(vals))
          {
            Py_ssize_t sz=PyString_Size(vals);
            std::vector<char> vals2(sz);
            std::copy(PyString_AsString(vals),PyString_AsString(vals)+sz,vals2.begin());
            return self->presenceOfValue(vals2);
          }
%#if PY_VERSION_HEX >= 0x03000000
        if(PyUnicode_Check(vals))
          {
            Py_ssize_t sz=PyUnicode_GET_LENGTH(vals);
            std::vector<char> vals2(sz);
            std::copy(PyUnicode_AsUTF8(vals),PyUnicode_AsUTF8(vals)+sz,vals2.begin());
            return self->presenceOfValue(vals2);
          }
%#endif
        else
          throw INTERP_KERNEL::Exception("DataArrayAsciiChar::presenceOfValue : only strings in input supported !");
      }

      int findIdFirstEqual(PyObject *vals) const
      {
        if(PyString_Check(vals))
          {
            Py_ssize_t sz=PyString_Size(vals);
            std::vector<char> vals2(sz);
            std::copy(PyString_AsString(vals),PyString_AsString(vals)+sz,vals2.begin());
            return self->findIdFirstEqual(vals2);
          }
%#if PY_VERSION_HEX >= 0x03000000
        if(PyUnicode_Check(vals))
          {
            Py_ssize_t sz=PyUnicode_GET_LENGTH(vals);
            std::vector<char> vals2(sz);
            std::copy(PyUnicode_AsUTF8(vals),PyUnicode_AsUTF8(vals)+sz,vals2.begin());
            return self->findIdFirstEqual(vals2);
          }
%#endif
        else
          throw INTERP_KERNEL::Exception("DataArrayAsciiChar::findIdFirstEqual : only strings in input supported !");
      }

      int findIdFirstEqualTuple(PyObject *tupl) const
      {
        if(PyString_Check(tupl))
          {
            Py_ssize_t sz=PyString_Size(tupl);
            std::vector<char> vals(sz);
            std::copy(PyString_AsString(tupl),PyString_AsString(tupl)+sz,vals.begin());
            return self->findIdFirstEqualTuple(vals);
          }
%#if PY_VERSION_HEX >= 0x03000000
        if(PyUnicode_Check(tupl))
          {
            Py_ssize_t sz=PyUnicode_GET_LENGTH(tupl);
            std::vector<char> vals(sz);
            std::copy(PyUnicode_AsUTF8(tupl),PyUnicode_AsUTF8(tupl)+sz,vals.begin());
            return self->findIdFirstEqualTuple(vals);
          }
%#endif
        else
          throw INTERP_KERNEL::Exception("DataArrayAsciiChar::findIdFirstEqualTuple : only strings in input supported !");
      }

      int findIdSequence(PyObject *strOrListOfInt) const
      {
        if(PyString_Check(strOrListOfInt))
          {
            Py_ssize_t sz=PyString_Size(strOrListOfInt);
            std::vector<char> vals(sz);
            std::copy(PyString_AsString(strOrListOfInt),PyString_AsString(strOrListOfInt)+sz,vals.begin());
            return self->findIdSequence(vals);
          }
%#if PY_VERSION_HEX >= 0x03000000
        else if(PyUnicode_Check(strOrListOfInt))
          {
            Py_ssize_t sz=PyUnicode_GET_LENGTH(strOrListOfInt);
            std::vector<char> vals(sz);
            std::copy(PyUnicode_AsUTF8(strOrListOfInt),PyUnicode_AsUTF8(strOrListOfInt)+sz,vals.begin());
            return self->findIdSequence(vals);
          }
%#endif
        else
          throw INTERP_KERNEL::Exception("DataArrayAsciiChar::search : only strings in input supported !");
      }
   
      PyObject *getTuple(int tupleId) const
      {
        int sz=self->getNumberOfComponents();
        INTERP_KERNEL::AutoPtr<char> tmp=new char[sz+1]; tmp[sz]='\0';
        self->getTuple(tupleId,tmp);
        return PyString_FromString(tmp);
      }

      PyObject *getMaxValue() const
      {
        int tmp;
        char tmp2[2]; tmp2[1]='\0';
        tmp2[0]=self->getMaxValue(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyString_FromString(tmp2));
        PyTuple_SetItem(ret,1,PyInt_FromLong(tmp));
        return ret;
      }

      PyObject *getMinValue() const
      {
        int tmp;
        char tmp2[2]; tmp2[1]='\0';
        tmp2[0]=self->getMinValue(tmp);
        PyObject *ret=PyTuple_New(2);
        PyTuple_SetItem(ret,0,PyString_FromString(tmp2));
        PyTuple_SetItem(ret,1,PyInt_FromLong(tmp));
        return ret;
      }

      int index(PyObject *obj) const
      {
        int nbOfCompo=self->getNumberOfComponents();
        switch(nbOfCompo)
          {
          case 1:
            {
              if(PyString_Check(obj))
                {
                  Py_ssize_t sz=PyString_Size(obj);
                  char *pt=PyString_AsString(obj);
                  if(sz==1)
                    return self->findIdFirstEqual(pt[0]);
                  else
                    throw INTERP_KERNEL::Exception("DataArrayAsciiChar::index : 'this' contains one component and trying to find a string with size different from 1 !");
                }
%#if PY_VERSION_HEX >= 0x03000000
              if(PyUnicode_Check(obj))
                {
                  Py_ssize_t sz;
                  char *pt=PyUnicode_AsUTF8AndSize(obj, &sz);
                  if(sz==1)
                    return self->findIdFirstEqual(pt[0]);
                  else
                    throw INTERP_KERNEL::Exception("DataArrayAsciiChar::index : 'this' contains one component and trying to find a string with size different from 1 !");
                }
%#endif
              else
                throw INTERP_KERNEL::Exception("DataArrayAsciiChar::index : 'this' contains one component and trying to find an element which is not an integer !");
            }
          default:
            return MEDCoupling_DataArrayAsciiChar_findIdFirstEqualTuple(self,obj);
          }
      }

      bool __contains__(PyObject *obj) const
      {
        int nbOfCompo=self->getNumberOfComponents();
        switch(nbOfCompo)
          {
          case 0:
            return false;
          case 1:
            {
              if(PyString_Check(obj))
                {
                  Py_ssize_t sz=PyString_Size(obj);
                  char *pt=PyString_AsString(obj);
                  if(sz==1)
                    return self->presenceOfValue(pt[0]);
                  else
                    throw INTERP_KERNEL::Exception("DataArrayAsciiChar::__contains__ : 'this' contains one component and trying to find a string with size different from 1 !");
                }
%#if PY_VERSION_HEX >= 0x03000000
              if(PyUnicode_Check(obj))
                {
                  Py_ssize_t sz;
                  char *pt=PyUnicode_AsUTF8AndSize(obj, &sz);
                  if(sz==1)
                    return self->presenceOfValue(pt[0]);
                  else
                    throw INTERP_KERNEL::Exception("DataArrayAsciiChar::__contains__ : 'this' contains one component and trying to find a string with size different from 1 !");
                }
%#endif
              else
                throw INTERP_KERNEL::Exception("DataArrayAsciiChar::__contains__ : 'this' contains one component and trying to find an element which is not an integer !");
            }
          default:
            return MEDCoupling_DataArrayAsciiChar_presenceOfTuple(self,obj);
          }
      }

      PyObject *__getitem__(PyObject *obj) const
      {
        int sw,iTypppArr;
        std::vector<int> stdvecTyyppArr;
        std::pair<int, std::pair<int,int> > sTyyppArr;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        convertIntStarOrSliceLikePyObjToCppWithNegIntInterp(obj,self->getNumberOfTuples(),sw,iTypppArr,stdvecTyyppArr,sTyyppArr,daIntTyypp);
        switch(sw)
          {
          case 1:
            return MEDCoupling_DataArrayAsciiChar_getTuple(self,iTypppArr);
          case 2:
            return convertDataArrayChar(self->selectByTupleIdSafe(&stdvecTyyppArr[0],&stdvecTyyppArr[0]+stdvecTyyppArr.size()), SWIG_POINTER_OWN | 0 );
          case 3:
            return convertDataArrayChar(self->selectByTupleIdSafeSlice(sTyyppArr.first,sTyyppArr.second.first,sTyyppArr.second.second), SWIG_POINTER_OWN | 0 );
          case 4:
            return convertDataArrayChar(self->selectByTupleIdSafe(daIntTyypp->begin(),daIntTyypp->end()), SWIG_POINTER_OWN | 0 );
          default:
            throw INTERP_KERNEL::Exception("DataArrayAsciiChar::__getitem__ : supporting int, list of int, tuple of int, DataArrayInt and slice in input !");
          }
      }

      DataArrayAsciiChar *__setitem__(PyObject *obj, PyObject *value)
      {
        static const char msg[]="DataArrayAsciiChar::__setitem__ : supporting int, list of int, tuple of int, DataArrayInt and slice in input, and 4 types accepted in value : string, list or tuple of strings having same size, not null DataArrayChar instance.";
        int sw1,iTypppArr;
        std::vector<int> stdvecTyyppArr;
        std::pair<int, std::pair<int,int> > sTyyppArr;
        MEDCoupling::DataArrayInt *daIntTyypp=0;
        int nbOfCompo=self->getNumberOfComponents();
        int nbOfTuples=self->getNumberOfTuples();
        convertIntStarOrSliceLikePyObjToCppWithNegIntInterp(obj,nbOfTuples,sw1,iTypppArr,stdvecTyyppArr,sTyyppArr,daIntTyypp);
        int sw2;
        char vc; std::string sc; std::vector<std::string> vsc; DataArrayChar *dacc=0;
        convertObjToPossibleCpp6(value,sw2,vc,sc,vsc,dacc);
        switch(sw1)
          {
          case 1:
            {//obj int
              switch(sw2)
                {//value char
                case 1:
                  {
                    self->setPartOfValuesSimple3(vc,&iTypppArr,&iTypppArr+1,0,nbOfCompo,1);
                    return self;
                  }
                  //value string
                case 2:
                  {
                    MCAuto<DataArrayAsciiChar> tmp=DataArrayAsciiChar::New(sc);
                    self->setPartOfValues3(tmp,&iTypppArr,&iTypppArr+1,0,nbOfCompo,1,false);
                    return self;
                  }
                  //value vector<string>
                case 3:
                  {
                    MCAuto<DataArrayAsciiChar> tmp=DataArrayAsciiChar::New(vsc,' ');
                    self->setPartOfValues3(tmp,&iTypppArr,&iTypppArr+1,0,nbOfCompo,1,false);
                    return self;
                  }
                  //value DataArrayChar
                case 4:
                  {
                    self->setPartOfValues3(dacc,&iTypppArr,&iTypppArr+1,0,nbOfCompo,1,false);
                    return self;
                  }
                default:
                  throw INTERP_KERNEL::Exception(msg);
                }
            }
          case 2:
            {//obj list-tuple[int]
              switch(sw2)
                {
                  {//value char
                  case 1:
                    {
                      self->setPartOfValuesSimple3(vc,&stdvecTyyppArr[0],&stdvecTyyppArr[0]+stdvecTyyppArr.size(),0,nbOfCompo,1);
                      return self;
                    }
                    //value string
                  case 2:
                    {
                      MCAuto<DataArrayAsciiChar> tmp=DataArrayAsciiChar::New(sc);
                      self->setPartOfValues3(tmp,&stdvecTyyppArr[0],&stdvecTyyppArr[0]+stdvecTyyppArr.size(),0,nbOfCompo,1,false);
                      return self;
                    }
                    //value vector<string>
                  case 3:
                    {
                      MCAuto<DataArrayAsciiChar> tmp=DataArrayAsciiChar::New(vsc,' ');
                      self->setPartOfValues3(tmp,&stdvecTyyppArr[0],&stdvecTyyppArr[0]+stdvecTyyppArr.size(),0,nbOfCompo,1,false);
                      return self;
                    }
                    //value DataArrayChar
                  case 4:
                    {
                      self->setPartOfValues3(dacc,&stdvecTyyppArr[0],&stdvecTyyppArr[0]+stdvecTyyppArr.size(),0,nbOfCompo,1,false);
                      return self;
                    }
                  default:
                    throw INTERP_KERNEL::Exception(msg);
                  }
                }
            }
          case 3:
            {//slice
              switch(sw2)
                {
                  {//value char
                  case 1:
                    {
                      self->setPartOfValuesSimple1(vc,sTyyppArr.first,sTyyppArr.second.first,sTyyppArr.second.second,0,nbOfCompo,1);
                      return self;
                    }
                    //value string
                  case 2:
                    {
                      MCAuto<DataArrayAsciiChar> tmp=DataArrayAsciiChar::New(sc);
                      self->setPartOfValues1(tmp,sTyyppArr.first,sTyyppArr.second.first,sTyyppArr.second.second,0,nbOfCompo,1,false);
                      return self;
                    }
                    //value vector<string>
                  case 3:
                    {
                      MCAuto<DataArrayAsciiChar> tmp=DataArrayAsciiChar::New(vsc,' ');
                      self->setPartOfValues1(tmp,sTyyppArr.first,sTyyppArr.second.first,sTyyppArr.second.second,0,nbOfCompo,1,false);
                      return self;
                    }
                    //value DataArrayChar
                  case 4:
                    {
                      self->setPartOfValues1(dacc,sTyyppArr.first,sTyyppArr.second.first,sTyyppArr.second.second,0,nbOfCompo,1,false);
                      return self;
                    }
                  default:
                    throw INTERP_KERNEL::Exception(msg);
                  }
                }
            }
          case 4:
            {//DataArrayInt
              switch(sw2)
                {
                  {//value char
                  case 1:
                    {
                      self->setPartOfValuesSimple3(vc,daIntTyypp->begin(),daIntTyypp->end(),0,nbOfCompo,1);
                      return self;
                    }
                    //value string
                  case 2:
                    {
                      MCAuto<DataArrayAsciiChar> tmp=DataArrayAsciiChar::New(sc);
                      self->setPartOfValues3(tmp,daIntTyypp->begin(),daIntTyypp->end(),0,nbOfCompo,1,false);
                      return self;
                    }
                    //value vector<string>
                  case 3:
                    {
                      MCAuto<DataArrayAsciiChar> tmp=DataArrayAsciiChar::New(vsc,' ');
                      self->setPartOfValues3(tmp,daIntTyypp->begin(),daIntTyypp->end(),0,nbOfCompo,1,false);
                      return self;
                    }
                    //value DataArrayChar
                  case 4:
                    {
                      self->setPartOfValues3(dacc,daIntTyypp->begin(),daIntTyypp->end(),0,nbOfCompo,1,false);
                      return self;
                    }
                  default:
                    throw INTERP_KERNEL::Exception(msg);
                  }
                }
            }
          default:
            throw INTERP_KERNEL::Exception(msg);
          }
      }
    }
  };

  class DataArrayAsciiCharTuple;

  class DataArrayAsciiCharIterator
  {
  public:
    DataArrayAsciiCharIterator(DataArrayAsciiChar *da);
    ~DataArrayAsciiCharIterator();
    %extend
    {
      PyObject *next()
      {
        DataArrayAsciiCharTuple *ret=self->nextt();
        if(ret)
          return SWIG_NewPointerObj(SWIG_as_voidptr(ret),SWIGTYPE_p_MEDCoupling__DataArrayAsciiCharTuple,SWIG_POINTER_OWN | 0);
        else
          {
            PyErr_SetString(PyExc_StopIteration,"No more data.");
            return 0;
          }
      }
    }
  };

  class DataArrayAsciiCharTuple
  {
  public:
    int getNumberOfCompo() const;
    DataArrayAsciiChar *buildDAAsciiChar(int nbOfTuples, int nbOfCompo) const;
    %extend
    {
      std::string __str__() const
      {
        return self->repr();
      }
      
      DataArrayAsciiChar *buildDAAsciiChar()
      {
        return self->buildDAAsciiChar(1,self->getNumberOfCompo());
      }
    }
  };
}

%pythoncode %{
def MEDCouplingStdReduceFunct(cls,params):
    a,b=params
    ret=object.__new__(cls)
    ret.__init__(*a)
    ret.__setstate__(b)
    return ret

def MEDCouplingDataArrayDoubleReduce(self):
    if not MEDCouplingHasNumPyBindings():
      raise InterpKernelException("PyWrap of DataArrayDouble.__reduce__ : not implemented because numpy is not active in your configuration ! No serialization/unserialization available without numpy !")
    return MEDCouplingStdReduceFunct,(DataArrayDouble,((self.toNumPyArray(),),(self.__getstate__()),))

def MEDCouplingDataArrayIntReduce(self):
    if not MEDCouplingHasNumPyBindings():
      raise InterpKernelException("PyWrap of DataArrayInt.__reduce__ : not implemented because numpy is not active in your configuration ! No serialization/unserialization available without numpy !")
    return MEDCouplingStdReduceFunct,(DataArrayInt,((self.toNumPyArray(),),(self.__getstate__()),))

def MEDCouplingDataArrayByteReduce(self):
    if not MEDCouplingHasNumPyBindings():
      raise InterpKernelException("PyWrap of DataArrayByte.__reduce__ : not implemented because numpy is not active in your configuration ! No serialization/unserialization available without numpy !")
    return MEDCouplingStdReduceFunct,(DataArrayByte,((self.toNumPyArray(),),(self.__getstate__()),))

def MEDCouplingDataArrayFloatReduce(self):
    if not MEDCouplingHasNumPyBindings():
      raise InterpKernelException("PyWrap of DataArrayFloat.__reduce__ : not implemented because numpy is not active in your configuration ! No serialization/unserialization available without numpy !")
    return MEDCouplingStdReduceFunct,(DataArrayFloat,((self.toNumPyArray(),),(self.__getstate__()),))
%}
