import QtQuick 2.8
import backend 1.0

Item {
    id: connectionPort
    width: 240
    height: 40
//    property alias _45Text: _45.text
//    property alias minutesRemainingText: minutesRemaining.text

    Text {
        id: _45
        x: 0
        y: 0
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
