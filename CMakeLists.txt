project(mini-qml)

cmake_minimum_required(VERSION 2.8)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(Qt5 REQUIRED
    Core
    Qml
    Quick
    QuickControls2
    Widgets
)

qt5_add_resources(RESOURCES resources.qrc)
add_subdirectory(src)
