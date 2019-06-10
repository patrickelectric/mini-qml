set(SRCS
    main.cpp
    providessomething.cpp
)

qt5_add_resources(RESOURCES ../resources.qrc)

add_executable(mini-qml ${SRCS} ${RESOURCES})
target_link_libraries(mini-qml Qt5::Core Qt5::Qml Qt5::Widgets)
