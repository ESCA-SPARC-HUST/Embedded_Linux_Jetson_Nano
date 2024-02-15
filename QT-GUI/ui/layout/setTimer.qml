import QtQuick 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.0
import SetTimer 1.0

Rectangle {
    id: frame_27
    width: 1024
    height: 500
    color: "#262e4b"

    property string start_time: ''
    property string end_time: ''
    property string timer_list_text: ''

    Component.onCompleted: {
        let result = [];
        result = setTimer.loadTimer();
        console.log(result);
        for (let i = 0; i < result.length; i++) {
            timer_list_text += result[i] + '\n';
        }
    }

    SvgPathItem {
        id: line_21_Stroke_
        x: 47
        y: 73
        width: 951
        height: 1
        fillColor: "#ffffff"
        path: "M 951 1 L 0 1 L 0 0 L 951 0 L 951 1 Z"
        antialiasing: true
        strokeColor: "transparent"
        joinStyle: 0
        strokeStyle: 1
        strokeWidth: 1
    }

    Rectangle {
        id: rectangle_76
        x: 399
        y: 12
        width: 246
        height: 52
        color: "#69000822"
        radius: 8

        Text {
            id: set_timer_text
            x: 53
            y: 8
            color: "#ffffff"
            text: qsTr("Set Timer")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: false
            font.pointSize: 24
        }
    }

    Dialog {
            id: notificationDialog
            width: 300
            height: 150
            anchors.centerIn: parent
            title: "Notification"

            contentItem: Text {
                text: "Save completed!"
                anchors.centerIn: parent
            }

            standardButtons: Dialog.Ok

            onAccepted: {
                console.log("Save completed!");
            }

            onRejected: {
                console.log("Rejected");
            }
        }

    Text {
        id: start_time_text
        x: 56
        y: 119
        width: 159
        height: 40
        text: qsTr("Start time")
        font.pixelSize: 32
        color: "white"
    }

    Text {
        id: end_time_text
        x: 56
        y: 280
        width: 159
        height: 40
        color: "#ffffff"
        text: qsTr("End time")
        font.pixelSize: 32
    }

    Rectangle {
        id: rectangle
        x: 47
        y: 175
        width: 209
        height: 56
        color: "#3b000643"
        radius: 12
        TextEdit {
            id: start_time_textedit
            x: 32
            y: 8
            width: 146
            height: 48
            color: "#ffffff"
            text: start_time
            font.pixelSize: 32
        }
    }

    Rectangle {
        id: rectangle1
        x: 47
        y: 337
        width: 209
        height: 56
        color: "#3b000643"
        radius: 12
        TextEdit {
            id: end_time_textedit
            x: 32
            y: 8
            width: 146
            height: 48
            color: "#ffffff"
            text: end_time
            font.pixelSize: 32
        }
    }

    Rectangle {
        id: rectangle2
        x: 301
        y: 101
        width: 672
        height: 367
        color: "#500a0070"

        Text {
            id: timer_list
            x: 262
            y: 6
            width: 148
            height: 40
            color: "#ffffff"
            text: "Timer List"
            font.pixelSize: 32
        }
        Text {
            id: timer_list_text_id
            x: 20
            y: 50
            width: 148
            height: 40
            color: "#ffffff"
            text: timer_list_text
            font.pixelSize: 20
        }
    }

    Rectangle {
        id: rectangle3
        x: 80
        y: 440
        width: 146
        height: 48
        color: "#3b000643"
        radius: 10

        Text {
            id: save
            x: 40
            y: 6
            width: 148
            height: 40
            color: "#ffffff"
            text: qsTr("Save")
            font.pixelSize: 32
        }

        SetTimer {
            id: setTimer
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                let result = [];
                start_time = start_time_textedit.text;
                end_time = end_time_textedit.text;
                result.push(start_time);
                result.push('--->' +end_time);

                setTimer.saveTimer(result);
                notificationDialog.open();
                timer_list_text += start_time +" ---> "+ end_time + '\n';
                start_time_textedit.text = '';
                end_time_textedit.text = '';
            }
        }
    }

    Rectangle {
        id: back_to_config
        x: 8
        y: 40
        width: 200
        height: 48
        color: "#00000212"

        Text {
            id: back_to_config_text
            x: 40
            y: 6
            width: 148
            height: 40
            color: "#ffffff"
            text: qsTr("<-Back to Config")
            font.pixelSize: 18

        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                loader.source = "/ui/layout/systemConfig.qml"
            }
        }
    }
}
