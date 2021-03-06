
CONFIG += c++11
HEADERS       = \
                window.h \
    mesh.h \
    utility/basedefine.h \
    Deformation/meshlaplaciansolver.h \
    Deformation/poissondeformation.h \
    utility/quaternion.h \
    glwidget.h \
    utility/meshutility.h

SOURCES       = glwidget.cpp \
                main.cpp \
                window.cpp \
                mesh.cpp \
    Deformation/meshlaplaciansolver.cpp \
    Deformation/poissondeformation.cpp \
    utility/quaternion.cpp \
    utility/meshutility.cpp

QT           += opengl widgets

# install
#target.path = $$[QT_INSTALL_EXAMPLES]/opengl/legacy/hellogl
#INSTALLS += target

contains(QT_CONFIG, opengles.|angle):error("This example requires Qt to be configured with -opengl desktop")



macx: LIBS += -L$$PWD/lib/ -lOpenMeshCore



INCLUDEPATH += $$PWD
INCLUDEPATH += $$PWD/eigen3
INCLUDEPATH += /usr/local/include
# DEPENDPATH += $$PWD/.

# macx: PRE_TARGETDEPS += $$PWD/lib/libOpenMeshCore.a
