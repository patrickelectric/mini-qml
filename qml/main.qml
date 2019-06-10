import QtQuick 2.12
import QtQuick.Controls 2.3

import ProvidesSomething 1.0

ApplicationWindow {
    id: window
    title: "Mini-QML"
    visible: true
    height: 600
    width: 800

    DropArea {
        id: dropArea
        anchors.fill: parent
        keys: ["text/plain"]
        onEntered: print('entered')
        onDropped: {
            list.model = drop.text.split('\n')
        }
    }

    ListView {
        id: list
        anchors.fill: parent
        delegate: Loader {
            id: loader
            source: modelData
        }
    }
}
