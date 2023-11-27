import QtQuick 2.15
import QtQuick.Controls 2.15

//Item {
//    id: rectangle1
//    width: 1024
//    height: 50

//}

Rectangle{
    id: nav_bar
    width: 1024
    height: 50
    color: "#000000"
    Rectangle {
        id: rectangle2
        width: 220
        height: 50
        color: "#000000"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("Main Menu")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: rectangle3
        y: 0
        width: 2
        height: 50
        color: "#ffffff"
        anchors.left: rectangle2.right
    }

    Rectangle {
        id: rectangle4
        width: 220
        height: 50
        color: "#000000"
        anchors.left: rectangle3.right
        Text {
            id: text2
            color: "#ffffff"
            text: qsTr("File Components")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: rectangle5
        width: 220
        height: 50
        color: "#000000"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 0
        Text {
            id: text3
            color: "#ffffff"
            text: qsTr("Adjust Parameter")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: rectangle6
        y: 0
        width: 2
        height: 50
        color: "#ffffff"
        anchors.right: rectangle5.left
    }

    Rectangle {
        id: rectangle7
        width: 220
        height: 50
        color: "#000000"
        anchors.right: rectangle6.left
        Text {
            id: text4
            color: "#ffffff"
            text: qsTr("Monitor System")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    Image {
        id: image
        y: -85
        width: 172
        height: 162
        source: "assets/robot.png"
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
    }
}
