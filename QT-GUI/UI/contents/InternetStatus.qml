import QtQuick 2.8
import backend 1.0

Item {
    id: internetStatus
    width: 272
    height: 40
//    property alias _45Text: _45.text
//    property alias minutesRemainingText: minutesRemaining.text

    Text {
        id: _45
        x: 20
        y: 0
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
}
