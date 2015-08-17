# -----------------------------------------------------------------------------
# alglib project profile
#
# \file    alglib.pro
# \author  Hugo
# \date    2010-03-10
# -----------------------------------------------------------------------------

TEMPLATE   = lib

TARGET     = alglib

DESTDIR    = ../../lib
DLLDESTDIR = ../../lib

# set high warn level (warn 4 on MSVC)
WARN = HIGH

# add used projects here (see included pri files below for available projects)
CONFIG += staticlib

# -- System -------------------------------------------------------------
include ($(MLAB_MeVis_Foundation)/Configuration/IncludePackages.pri)

INCLUDEPATH += src

HEADERS += \
    src/alglibinternal.h \
    src/alglibmisc.h \
    src/ap.h \
    src/dataanalysis.h \
    src/diffequations.h \
    src/fasttransforms.h \
    src/integration.h \
    src/interpolation.h \
    src/linalg.h \
    src/optimization.h \
    src/solvers.h \
    src/specialfunctions.h \
    src/statistics.h \
    src/stdafx.h

SOURCES += \
    src/alglibinternal.cpp \
    src/alglibmisc.cpp \
    src/ap.cpp \
    src/dataanalysis.cpp \
    src/diffequations.cpp \
    src/fasttransforms.cpp \
    src/integration.cpp \
    src/interpolation.cpp \
    src/linalg.cpp \
    src/optimization.cpp \
    src/solvers.cpp \
    src/specialfunctions.cpp \
    src/statistics.cpp

# additional files that are NOT compiled
RELATEDFILES += \
    gpl2.txt \
    gpl3.txt \
    manual.cpp.html

