import QtQuick 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
import QtQuick.Controls 2.15

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
        color: "#272D37"
    }

    Image {
        id: rectangle_57
        x: 18
        y: 209
        source: "assets/rectangle_57.svg"
    }

    Text {
        id: select_folder_to_store
        x: 24
        y: 175
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
        id: home_nguyen_hai_minh
        width: 332
        height: 24
        color: "#ffffff"
        text: qsTr("home/nguyen-hai-minh")
        font.pixelSize: 26
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Light
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -350
        anchors.verticalCenterOffset: -14
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

    Image {
        id: rectangle_58
        x: 18
        y: 290
        source: "assets/rectangle_58.svg"
    }

    Rectangle {
        id: rectangle_64
        x: 837
        y: 298
        width: 151
        height: 37
        color: "#6935416c"
        radius: 8
    }

    Rectangle {
        id: rectangle_83
        x: 800
        y: 218
        width: 131
        height: 36
        color: "#6935416c"
        radius: 8
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

    Slider {
        x: 493
        y: 298
        width: 326
        height: 40
        from: 1
        value: 1
        to: 100
        snapMode: Slider.SnapAlways
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
            cursorShape: Qt.WaitCursor
            onClicked: {
                console.log("minhvippro is here");
            }
        }
    }

    Text {
        id: default1
        width: 110
        height: 24
        color: "#ffffff"
        text: qsTr("Default")
        font.pixelSize: 26
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Light
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: 395
        anchors.verticalCenterOffset: 68
        font.family: "Josefin Sans"
    }

    Text {
        id: browser
        width: 120
        height: 23
        color: "#ffffff"
        text: qsTr("Browser")
        font.pixelSize: 26
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Light
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: 339
        anchors.verticalCenterOffset: -13
        font.family: "Josefin Sans"
    }

    Rectangle {
        id: rectangle_82
        x: 943
        y: 218
        width: 45
        height: 36
        color: "#6935416c"
        radius: 8
    }

    SvgPathItem {
        id: vector
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 953
        strokeColor: "transparent"
        anchors.bottomMargin: 253
        strokeStyle: 1
        joinStyle: 0
        anchors.rightMargin: 44
        antialiasing: true
        strokeWidth: 1
        fillColor: "#ffffff"
        anchors.topMargin: 224
        path: "M 0 3.2857142857142856 C 0 1.4734375391687664 1.5134766027331352 0 3.375 0 L 10.341211259365082 0 C 11.34843784198165 0 12.3134765625 0.39017849309103825 13.025390625 1.0832588502338953 L 15.287694990634918 3.2857142857142856 L 23.625 3.2857142857142856 C 25.486523397266865 3.2857142857142856 27 4.759151824883052 27 6.571428571428571 L 27 19.714285714285715 C 27 21.526562460831233 25.486523397266865 23 23.625 23 L 3.375 23 C 1.5134766027331352 23 0 21.526562460831233 0 19.714285714285715 L 0 3.2857142857142856 Z M 3.375 2.4642857142857144 C 2.910937489941716 2.4642857142857144 2.53125 2.83392856163638 2.53125 3.2857142857142856 L 2.53125 19.714285714285715 C 2.53125 20.16607143836362 2.910937489941716 20.535714285714285 3.375 20.535714285714285 L 23.625 20.535714285714285 C 24.089062510058284 20.535714285714285 24.46875 20.16607143836362 24.46875 19.714285714285715 L 24.46875 6.571428571428571 C 24.46875 6.119642847350665 24.089062510058284 5.75 23.625 5.75 L 15.113672196865082 5.75 C 14.554687801748514 5.75 14.016796231269836 5.5343751566750665 13.621288418769836 5.149330513817923 L 11.237695634365082 2.823660714285714 C 11.000390946865082 2.5926339285714284 10.678711264394224 2.4642857142857144 10.341211259365082 2.4642857142857144 L 3.375 2.4642857142857144 Z"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"858b790d-cb73-5e2b-a692-48e572ab6f81"}D{i:1;uuid:"9854a454-7d29-5d5c-9217-7bd9a0db97e8"}
D{i:4;uuid:"47908f30-a017-5eb4-b03a-165499f9955e"}D{i:8;uuid:"bfa8ed92-df48-5e41-9d39-872c6be4ed95"}
D{i:9;uuid:"33b7678a-58c9-55e0-b63e-03a60e852890"}D{i:10;uuid:"9d2c85f1-68ec-5369-95b5-05eb3cda5aae"}
}
##^##*/

