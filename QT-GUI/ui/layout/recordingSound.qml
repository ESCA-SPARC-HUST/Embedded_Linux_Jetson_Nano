import QtQuick 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.0


Rectangle {
    id: frame_1
    width: 1024
    height: 500
    color: "transparent"

    Rectangle {
        id: rectangle_55
        x: 0
        y: 0
        width: 1024
        height: 500
        color: "#262e4b"
    }

    Text {
        id: select_folder_to_store
        x: 24
        y: 155
        width: 312
        height: 24
        color: "#ffffff"
        text: qsTr("Select folder to store")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Itim"
    }

    Text {
        id: choose_file_text
        width: 781
        height: 100
        color: "#ffffff"
        text: "home/nguyen-hai-minh/wavFile"
        font.pixelSize: 23
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.NoWrap
        font.weight: Font.Light
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -97
        anchors.verticalCenterOffset: -10
        font.family: "Josefin Sans"
    }

    SvgPathItem {
        id: line_21_Stroke_
        x: 23
        y: 96
        width: 975
        height: 1
        strokeColor: "transparent"
        strokeStyle: 1
        joinStyle: 0
        antialiasing: true
        strokeWidth: 1
        fillColor: "#ffffff"
        path: "M 975 1 L 0 1 L 0 0 L 975 0 L 975 1 Z"
    }

    Rectangle {
        id: rectangle_74
        x: 423
        y: 20
        width: 179
        height: 67
        color: "#69000822"
        radius: 8

        Text {
            id: text1
            x: 14
            y: 17
            width: 151
            height: 29
            color: "#ffffff"
            text: qsTr("Recording Sound")
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.weight: Font.Normal
            font.family: "Itim"
        }
    }

    Rectangle {
        id: rectangle_76
        x: 24
        y: 34
        width: 178
        height: 53
        color: "#6935416c"
        radius: 8
    }

    Rectangle {
        id: rectangle_77
        x: 623
        y: 34
        width: 179
        height: 53
        color: "#6935416c"
        radius: 8
    }

    Rectangle {
        id: rectangle_78
        x: 817
        y: 34
        width: 180
        height: 53
        color: "#6935416c"
        radius: 8
    }

    Rectangle {
        id: rectangle_75
        x: 220
        y: 37
        width: 180
        height: 53
        color: "#6935416c"
        radius: 8
    }

    Rectangle {
        id: rectangle_64
        x: 623
        y: 292
        width: 189
        height: 53
        color: "#6935416c"
        radius: 8

        Text {
            id: textEdit
            anchors.centerIn: parent
            width: 140
            height: 40
            color: "#ffffff"
            text: "10 s"
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 24

            onTextChanged: {
                // Add handle
            }
        }
    }


    Text {
        id: set_time_to_start_record
        x: 25
        y: 306
        width: 321
        height: 24
        color: "#ffffff"
        text: qsTr("Set time to start record")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Itim"
    }

    Rectangle {
        id: rectangle
        x: 685
        y: 382
        width: 288
        height: 77
        color: "#f30b0836"
        radius: 22

        Text {
            id: start_stop_Btn
            x: 8
            y: 1
            width: 280
            height: 68
            color: "#ffffff"
            text: qsTr("Start/Stop Button")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 22
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }


}
