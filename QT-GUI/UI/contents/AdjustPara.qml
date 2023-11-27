import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 1024
    height: 500


    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1024
        height: 500
        color: "#272d37"

        TextEdit {
            id: textEdit
            x: 461
            y: 97
            width: 80
            height: 20
            text: qsTr("day la do am thanh")
            font.pixelSize: 12
        }
    }
}
