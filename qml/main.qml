import QtQuick 2.7
import QtQuick.Controls 2.3
import QtMultimedia 5.8
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: window
    title: "Mini-QML"
    visible: true
    height: 600
    width: 500


    ColumnLayout {
        anchors.fill: parent
        Video {
            id: video
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.maximumHeight: 500
            Layout.maximumWidth: 500
            source: ""
        }

        TextField {
            Layout.fillWidth: true
            placeholderText: qsTr("GST pipeline")
            onEditingFinished: {
                /**
                    v4l2src device=/dev/video0 ! video/x-h264,width=1920,height=1080,type=video ! avdec_h264
                    udpsrc port=5600 close-socket=false multicast-iface=false auto-multicast=true ! application/x-rtp, payload=96 ! rtpjitterbuffer ! rtph264depay ! avdec_h264
                    videotestsrc
                **/
                video.source = "gst-pipeline: " + displayText + " ! autovideosink"
                video.stop()
                print(video.source)
                video.play()
            }
        }
    }
}
