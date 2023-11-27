import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 1024
    height: 500
    Rectangle{
        width: 1024
        height: 500
        color: "#272d37"
        anchors.centerIn: parent

        Text {
            id: text1
            x: 408
            y: 191
            width: 332
            height: 92
            text: qsTr("dday la man hinh main")
            font.pixelSize: 12
        }
    }
}
