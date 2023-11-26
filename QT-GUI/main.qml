import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtCharts 2.6
import QtMultimedia 5.15

Window {
    id: name
    width: 1024
    height: 500
    visible: true
    title: qsTr("Hello World")

    Button {
        id: btn1
        anchors.topMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Audio Screen"
        onClicked: loader1.source = "screen2.qml"
    }
    Loader {
        id: loader1
        anchors.centerIn: parent
        width: 1024
        height: 800
        source: "screen1.qml"
    }
}
