# - Sphinx detection
#
# Output variables:
#   SPHINX_EXECUTABLE - path to the Sphinx executable
#   SPHINX_PYTHONPATH - path to the Sphinx Python modules
#
# Additional features:
#   Sphinx_EXTENSIONS - optional variable which can be used to specify
#                       a list of required Sphinx extensions; not found
#                       extensions will be reported during the detection
#                       procedure; by default this variable is empty.
#                       Example:
#                           set(Sphinx_EXTENSIONS sphinxcontrib.napoleon)
#
###########################################################################
# Copyright (C) 2007-2019  CEA/DEN, EDF R&D, OPEN CASCADE
#
# Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
# CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
#
# See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
#

FIND_PROGRAM(SPHINX_EXECUTABLE
	     NAMES sphinx-build sphinx-build-${PYTHON_VERSION_MAJOR}.${PYTHON_VERSION_MINOR}
	     PATH_SUFFIXES Scripts)
FIND_PROGRAM(SPHINX_APIDOC_EXECUTABLE
             NAMES sphinx-apidoc sphinx-apidoc-${PYTHON_VERSION_MAJOR}.${PYTHON_VERSION_MINOR}
	     PATH_SUFFIXES Scripts)
FIND_PROGRAM(SPHINX_INTL_EXECUTABLE
             NAMES sphinx-intl sphinx-intl-${PYTHON_VERSION_MAJOR}.${PYTHON_VERSION_MINOR}
	     PATH_SUFFIXES Scripts)


# Get root dir locally, going up two levels from the exec:
GET_FILENAME_COMPONENT(_tmp_ROOT_DIR "${SPHINX_EXECUTABLE}" PATH)
GET_FILENAME_COMPONENT(_tmp_ROOT_DIR "${_tmp_ROOT_DIR}" PATH)
IF(WIN32)
  SET(SPHINX_PYTHONPATH "${_tmp_ROOT_DIR}/lib/site-packages")
ELSE()
  SET(SPHINX_PYTHONPATH "${_tmp_ROOT_DIR}/lib/python${PYTHON_VERSION_MAJOR}.${PYTHON_VERSION_MINOR}/site-packages")
ENDIF()

# Handle the standard arguments of the find_package() command:
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Sphinx REQUIRED_VARS SPHINX_EXECUTABLE SPHINX_APIDOC_EXECUTABLE SPHINX_INTL_EXECUTABLE)

FOREACH(_ext ${Sphinx_EXTENSIONS})
  EXECUTE_PROCESS(COMMAND ${PYTHON_EXECUTABLE} -c "import ${_ext}; print('ok')" OUTPUT_VARIABLE _has_ext ERROR_QUIET)
  IF(_has_ext)
    MESSAGE(STATUS "Required Sphinx extension '${_ext}' has been found!")
  ELSE()
    MESSAGE(WARNING "Required Sphinx extension '${_ext}' is not found!")
  ENDIF()
ENDFOREACH()
