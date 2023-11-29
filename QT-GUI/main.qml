import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtCharts 2.6
import QtMultimedia 5.15
import "qrc:/importComponent"

Window {
    id: mainScreen
    width: 1024
    height: 500
    visible: true
    color: "#272D37"

    TopBar {
        id: topBar
        width: 650
        height: 50
        anchors.top: parent.top
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: -5
        anchors.horizontalCenter: parent.horizontalCenter
    }

//    Button {
//        id: btn1
//        anchors.topMargin: 30
//        anchors.top: parent.top
//        anchors.horizontalCenter: parent.horizontalCenter
//        text: "Click here"
//        onClicked: loader.source = "screen2.qml"
//    }
    Loader {
        id: loader
        anchors.centerIn: parent
        width: 1024
        height: 800
        source: "screen1.qml"
    }

    BottomBar {
        id: navBar
        width: 1024
        height: 50
        anchors.bottom: parent.bottom
        z:1
    }


}
