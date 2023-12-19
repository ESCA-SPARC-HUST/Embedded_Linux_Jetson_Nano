import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"

Rectangle {
    width: 1024
    height: 500
    color: "#272d37"
    // Header
    Rectangle {
        id: rectangle
        x: 115
        y: 5
        width: 352
        height: 52
        color: "#394251"
        radius: 8

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("Real-time monitor")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                loader.source = "systemPerformance.qml"
            }
        }
    }

    Rectangle {
        id: rectangle1
        x: 565
        y: 5
        width: 352
        height: 52
        color: "#69000822"
        radius: 8
        Text {
            id: text2
            color: "#ffffff"
            text: qsTr("AI-process monitor")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle2
        x: 50
        y: 65
        width: 927
        height: 2
        color: "#ffffff"
    }

    // End header
    Image {
        id: image
        x: 0
        y: 81
        width: 1024
        height: 345
        source: "/ui/assets/exResourceMonitoring.png"
        fillMode: Image.PreserveAspectFit
    }
}
