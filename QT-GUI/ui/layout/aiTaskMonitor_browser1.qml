import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
// Import folder list
import Qt.labs.folderlistmodel 2.6
import QtWebEngine 1.10

Rectangle {
    width: 1024
    height: 500
    color: "#272d37"

    // HEADER
    Rectangle {
        id: about
        x: 50
        y: 8
        width: 113
        height: 52
        color: "#394251"
        radius: 8

        Text {
            id: text_about
            color: "#ffffff"
            text: qsTr("About")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                    loader.source = "about.qml"
                }
        }
    }

    Rectangle {
        id: rectangle3
        x: 169
        y: 8
        width: 291
        height: 52
        color: "#394251"
        radius: 8
        Text {
            id: text3
            color: "#ffffff"
            text: qsTr("System Infomation")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                    loader.source = "systemInformation.qml"
                }
        }
    }
    Rectangle {
        id: rectangle
        x: 466
        y: 8
        width: 285
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
                    loader.source = "realTimeMonitor.qml"
                }
        }
    }

    Rectangle {
        id: rectangle1
        x: 757
        y: 8
        width: 227
        height: 52
        color: "#69000822"
        radius: 8
        Text {
            id: text2
            color: "#ffffff"
            text: qsTr("AI Task Monitor")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                loader.source = "aiJobMonitor.qml"
            }
        }
    }
    Rectangle {
        id: rectangle2
        x: 50
        y: 65
        width: 934
        height: 2
        color: "#ffffff"
    }
    // End header

    // filemanager


    // Image render
    Rectangle {
        id: rectangle5
        x: 8
        y: 449
        width: 101
        height: 43
        color: "#69000822"
        radius: 8
        border.color: "#000000"
        border.width: 1
        Text {
            id: text5
            color: "#ffffff"
            text: qsTr("Back")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                loader.source = "aiJobMonitor.qml"
            }
        }
    }

    WebEngineView {
        id: webView
        anchors.top: rectangle2.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 50
        anchors.topMargin: 14
        anchors.rightMargin: 40
        anchors.bottomMargin: 65
        url: "http://www.google.com" // URL của trang web bạn muốn hiển thị
    }
}
