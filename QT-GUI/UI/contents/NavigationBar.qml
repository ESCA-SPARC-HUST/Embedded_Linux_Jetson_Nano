import QtQuick 2.15
import QtQuick.Controls 2.15

//Item {
//    id: rectangle1
//    width: 1024
//    height: 50

//}

Rectangle {
    id: bottomBarRec
    width: 1024
    height: 50
    color: "#000000"
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 0

    Rectangle {
        id: mainMenuRec
        width: 220
        height: 50
        color: "#000000"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Text {
            id: mainMenuText
            color: "#ffffff"
            text: qsTr("Main Menu")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            id: maMainMenu
            anchors.fill: parent
            cursorShape: Qt.WaitCursor
            onClicked: {
                console.log("minh dai ca o main")
                loader.source = "MainMenu.qml"
            }
        }
    }

    Rectangle {
        id: rectangle3
        y: 0
        width: 2
        height: 50
        color: "#ffffff"
        anchors.left: mainMenuRec.right

    }

    Rectangle {
        id: fileComponentsRec
        y: 0
        width: 230
        height: 50
        color: maFileComponents.containsMouse ? "gray" : "#000000"
        anchors.left: rectangle3.right

        Text {
            id: fileComponentsText
            color: "#ffffff"
            text: qsTr("File Components")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            id: maFileComponents
            anchors.fill: parent
            anchors.rightMargin: 0
            onClicked: {
                console.log("minh dai ca")
                loader.source = "FileHere.qml"
            }

        }
    }

    Rectangle {
        id: adjustParaRec
        width: 220
        height: 50
        color: maAdjustPara.containsMouse ? "gray" : "#000000"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 0
        Text {
            id: adjustParaText
            color: "#ffffff"
            text: qsTr("Adjust Parameter")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            id: maAdjustPara
            anchors.fill: parent
            onClicked: {
                console.log("minh dai ca")
                loader.source = "AdjustPara.qml"
            }
        }
    }

    Rectangle {
        id: rectangle6
        y: 0
        width: 2
        height: 50
        color: "#ffffff"
        anchors.right: adjustParaRec.left
    }

    Rectangle {
        id: monitorSystemRec
        x: 571
        y: 0
        width: 231
        height: 50
        color: maMonitorSystem.containsMouse ? "gray" : "#000000"
        anchors.right: rectangle6.left

        Text {
            id: monitorSystemText
            color: "#ffffff"
            text: qsTr("Monitor System")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            id: maMonitorSystem
            anchors.fill: parent
            anchors.leftMargin: 0
            onClicked: {
                console.log("minh vip pro")
                loader.source = "Monitor.qml"
            }

        }
    }
    Image {
        id: logoImg
        y: -84
        width: 172
        height: 162
        source: "../assets/robot.png"
        focus: false
        mirror: false
        mipmap: false
        autoTransform: false
        asynchronous: false
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectCrop
        z : 1

        MouseArea {
            id: maLogo
            anchors.fill: parent
            anchors.leftMargin: 35
            anchors.topMargin: 35
            anchors.rightMargin: 35
            anchors.bottomMargin: 35

            hoverEnabled: true
        }
    }
}
