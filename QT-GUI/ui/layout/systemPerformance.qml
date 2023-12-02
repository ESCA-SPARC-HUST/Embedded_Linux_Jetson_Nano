import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/ui/component"

Rectangle {
    width: parent
    height: parent
    color: "#272d37"
    Text {
        text: "Screen test is here"
        anchors.centerIn: parent
    }
    CpuFrame {
        anchors.centerIn: parent
        width: 250
        height: 250
    }
}
