import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: rectangle8
    width: 650
    height: 50
    color: "#000000"
    Rectangle {
        id: rectangle9
        x: -60
        y: -30
        width: 100
        height: 50
        color: "#000000"
        rotation: 54
    }

    Rectangle {
        id: rectangle10
        x: 610
        y: -30
        width: 100
        height: 50
        color: "#000000"
        rotation: -54
    }
    Text {
        id: text5
        color: "#ffffff"
        text: qsTr("D-ESCA-3")
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 30
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
    }

    Rectangle{
        id: settingRec
        x: 9
        y: 7
        width: 31
        height: 34
        color: maSetting.containsMouse ? "gray" : "#000000"
        anchors.left: parent.left
        anchors.leftMargin: 15

        Image {
            id: settingImg
            width: 30
            height: 30
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "../assets/setting-icon.png"
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0

            fillMode: Image.PreserveAspectFit

            MouseArea {
                id: maSetting
                anchors.fill: parent
                anchors.rightMargin: 0
                anchors.bottomMargin: -2
                anchors.leftMargin: 0
                anchors.topMargin: 2
                hoverEnabled: true

            }
        }
    }


    Rectangle {
        id: rectangle11
        x: 69
        y: 0
        width: 106
        height: 50
        color: "#000000"
        anchors.leftMargin: 28

        Text {
            id: timeText
            y: 5
            color: "#ffffff"
            text: qsTr("12:00 PM")
            font.pixelSize: 16
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: dateText
            x: -6
            y: 28
            color: "#ffffff"
            text: qsTr("18/10/2023")
            font.pixelSize: 16
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: stateLedRec
        x: 498
        y: 21
        width: 12
        height: 12
        color: "#00ffc8"
        radius: 10
        anchors.right: wifiBtn.left
        anchors.rightMargin: 20

    }

    Text {
        id: stateRunningText
        x: 432
        y: 17
        color: "#ffffff"
        text: qsTr("Running")
        font.pixelSize: 16
        anchors.rightMargin: 6
        anchors.right: stateLedRec.left
    }

    Rectangle{

    }
    Image {
        id: wifiBtn
        x: 544
        y: 13
        width: 30
        height: 30
        anchors.right: bluetoothBtn.left
        source: "../assets/wifi-icon.png"
        anchors.rightMargin: 10
        fillMode: Image.PreserveAspectFit

        MouseArea {
            id: maWifi
            anchors.fill: parent
        }
    }

    Image {
        id: bluetoothBtn
        x: 595
        y: 13
        width: 30
        height: 30
        anchors.right: parent.right
        source: "../assets/bluetooth-icon.png"
        anchors.rightMargin: 20
        fillMode: Image.PreserveAspectFit

        MouseArea {
            id: maBluetooth
            anchors.fill: parent
        }
    }
}

