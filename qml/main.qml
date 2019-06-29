import QtQuick 2.7
import QtQuick.Controls 2.3

ApplicationWindow {
    id: window
    title: "Mini-QML"
    visible: true
    height: 600
    width: 800

    Rectangle {
        anchors.fill: parent
        color: "blue"

        Text {
            text: "WEEEEEEEEEE"
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
            RotationAnimator on rotation {
                running: true
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: 700
            }
        }
    }
}
