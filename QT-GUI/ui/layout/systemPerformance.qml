import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/ui/component"

Rectangle {
    width: parent
    height: parent
    color: "#272d37"
    // CpuFrame {
    //     anchors.centerIn: parent
    //     width: 250
    //     height: 250
    //     anchors.verticalCenterOffset: -117
    //     anchors.horizontalCenterOffset: 0
    // }

    // RamFrame {
    //     anchors.centerIn: parent
    //     width: 250
    //     height: 250
    //     anchors.verticalCenterOffset: 88
    //     anchors.horizontalCenterOffset: 308
    // }

    // GpuFrame {
    //     anchors.centerIn: parent
    //     width: 250
    //     height: 250
    //     anchors.verticalCenterOffset: 88
    //     anchors.horizontalCenterOffset: -308
    // }
    // DiskUsageFrame {
    //     anchors.centerIn: parent
    //     width: 176
    //     height: 40
    //     anchors.verticalCenterOffset: -126
    //     anchors.horizontalCenterOffset: -311
    // }
    CpuFrame{
        x: 395
        y: 28
        width: 250
        height: 250
    }

    RamFrame{
        y: 220
        width: 250
        height: 250
        anchors.right: parent.right
        anchors.rightMargin: 67
    }
    GpuFrame{
        y: 220
        width: 250
        height: 250
        anchors.left: parent.left
        anchors.leftMargin: 48
    }


    // TEMP COMPONENT

    Text {
        id: diskUsage
        x: 50
        y: 70
        width: 176
        height: 40
        color: "#ffffff"
        text: BackendObject.diskText
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Roboto"
        font.weight: Font.Normal
    }

    Text {
        id: internetStatus
        x: 50
        y: 120
        width: 272
        height: 40
        color: "#ffffff"
        text: "Internet status: Connected"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Roboto"
        font.weight: Font.Normal
    }
    Text {
        id: runnningTime
        x: 700
        y: 70
        width: 240
        height: 40
        color: "#ffffff"
        text: "Running time: 0 hours"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Roboto"
        font.weight: Font.Normal
    }

    Text {
        id: connectionPort
        x: 700
        y: 120
        width: 240
        height: 40
        color: "#ffffff"
        text: "Connection port: COM3"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Roboto"
        font.weight: Font.Normal
    }
}
