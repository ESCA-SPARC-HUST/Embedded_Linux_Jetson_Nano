import QtQuick 2.15
import QtQuick.Controls 2.15
import UI 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor
    NavigationBar {
        id: navBar
        width: 1024
        height: 50
        anchors.bottom: parent.bottom
        z:1
    }
    
    
    TopBar{
        id: topBar
        width: 650
        height: 50
        anchors.top: parent.top
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: -5
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Loader {
        id: loader
        x: 0
        y: 46
        width: 1024
        height: 500
        onLoaded: console.log(loader.item.width)

    }
    Component.onCompleted: {
             loader.setSource("MainMenu.qml")
    }

}
