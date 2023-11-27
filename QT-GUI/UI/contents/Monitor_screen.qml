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
    }
    TopBar{
        id: topBar
        width: 650
        height: 50
        anchors.top: parent.top
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

    }

    CpuFrame{
        x: 387
        y: 88
        width: 250
        height: 250
    }

    RamFrame{
        y: 250
        width: 250
        height: 250
        anchors.right: parent.right
        anchors.rightMargin: 67
    }

    GpuFrame{
        y: 250
        width: 250
        height: 250
        anchors.left: parent.left
        anchors.leftMargin: 48
    }

    DiskUsage {
        x: 48
        y: 125
        width: 176
        height: 40
    }

    RunningTime{
        x: 707
        y: 125
        width: 240
        height: 40
    }

    InternetStatus{
        x: 30
        y: 175
        width: 272
        height: 40
    }

    ConnectionPort{
        x: 707
        y: 175
        width: 240
        height: 40
    }



}
