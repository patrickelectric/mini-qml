set(SRCS
    main.cpp
)

add_executable(mini-qml ${SRCS} ${RESOURCES})
target_link_libraries(mini-qml Qt5::Core Qt5::Qml Qt5::Widgets)
