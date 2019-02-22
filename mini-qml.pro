TARGET = mini-qml

CONFIG += \
    c++14

QT += gui qml widgets multimedia

HEADERS += \
    src/player.h

SOURCES += \
    src/main.cpp \
    src/player.cpp

RESOURCES += \
    resources.qrc
