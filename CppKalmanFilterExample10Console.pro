TEMPLATE = app
CONFIG += console
CONFIG -= qt
QMAKE_CXXFLAGS += -Wall -Wextra -Werror -std=c++0x

win32 {
  INCLUDEPATH += E:/boost_1_50_0

  LIBS += \
    -LE:/boost_1_50_0/stage/lib  \
    #-lboost_system-mgw47-mt-d-1_50 \     #NEXT for GCC 4.7
    #-lboost_filesystem-mgw47-mt-d-1_50 \ #NEXT for GCC 4.7
    #-lboost_regex-mgw47-mt-d-1_50 \      #NEXT for GCC 4.7
    -lboost_system-mgw44-mt-1_50 \        #PREV for GCC 4.4
    -lboost_filesystem-mgw44-mt-1_50 \    #PREV for GCC 4.4
    -lboost_regex-mgw44-mt-1_50           #PREV for GCC 4.4
}

unix {
  LIBS += -lqwt-qt4
  INCLUDEPATH += /usr/include/qwt-qt4/
}

SOURCES += main.cpp \
    kalmanfilter.cpp \
    whitenoisesystem.cpp \
    matrix.cpp \
    maindialog.cpp

HEADERS += \
    kalmanfilter.h \
    whitenoisesystem.h \
    matrix.h \
    maindialog.h

