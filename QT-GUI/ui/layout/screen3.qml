import QtQuick 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"

Rectangle {
    id: frame_22
    width: 1024
    height: 500
    color: "#272D37"
    property alias element4Text: element4.text
    property alias uInt8Text: uInt8.text
    property alias frequenceText: frequence.text
    property alias element1Text: element1.text
    property alias save_audio_file_asText: save_audio_file_as.text
    property alias sample_rateText: sample_rate.text
    property alias choose_deviceText: choose_device.text
    property alias hzText: hz.text
    property alias view_dataText: view_data.text
    property alias view_data3Text: view_data3.text
    property alias sampleFormatText: sampleFormat.text
    property alias home_nguyen_hai_minhText: home_nguyen_hai_minh.text
    property alias code_decText: code_dec.text
    property alias element5Text: element5.text
    property alias element2Text: element2.text
    property alias element3Text: element3.text
    property alias view_data2Text: view_data2.text
    property alias view_data1Text: view_data1.text
    property alias default1Text: default1.text
    property alias elementText: element.text

    Rectangle {
        id: rectangle_55
        x: 0
        y: 0
        width: 1024
        height: 500
        color: "#272D37"
        radius: 32
    }

    Image {
        id: rectangle_60
        x: 20
        y: 270
        source: "/ui/assets/rec.png"
    }

    Image {
        id: rectangle_69
        x: 20
        y: 402
        source: "/ui/assets/rec.png"
    }

    Image {
        id: rectangle_58
        x: 20
        y: 139
        source: "/ui/assets/rec.png"
    }

    Image {
        id: rectangle_57
        x: 20
        y: 74
        source: "/ui/assets/rec.png"
    }

    Rectangle {
        id: rectangle_62
        x: 705
        y: 83
        width: 242
        height: 35
        color: "#6935416c"
        radius: 8
    }

    Rectangle {
        id: rectangle_72
        x: 956
        y: 82
        width: 45
        height: 35
        color: "#6935416c"
        radius: 8
    }

    Image {
        id: setting
        x: 451
        y: 8
        source: "assets/setting.png"
    }

    Image {
        id: rectangle_61
        x: 20
        y: 337
        source: "/ui/assets/rec.png"
    }

    Image {
        id: rectangle_59
        x: 20
        y: 207
        source: "/ui/assets/rec.png"
    }

    Text {
        id: save_audio_file_as
        x: 49
        y: 89
        width: 223
        height: 22
        color: "#ffffff"
        text: qsTr("Save audio file as")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Itim"
        font.weight: Font.Normal
    }

    Text {
        id: sample_rate
        x: 49
        y: 289
        width: 160
        height: 24
        color: "#ffffff"
        text: qsTr("Sample rate")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Itim"
        font.weight: Font.Normal
    }

    Text {
        id: choose_device
        x: 49
        y: 224
        width: 188
        height: 21
        color: "#ffffff"
        text: qsTr("Choose device")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Itim"
        font.weight: Font.Normal
    }

    Text {
        id: sampleFormat
        x: 49
        y: 355
        width: 176
        height: 23
        color: "#ffffff"
        text: qsTr("SampleFormat")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Itim"
        font.weight: Font.Normal
    }

    Text {
        id: frequence
        x: 541
        y: 352
        width: 160
        height: 23
        color: "#ffffff"
        text: qsTr("Frequence")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Itim"
        font.weight: Font.Normal
    }

    Text {
        id: code_dec
        x: 541
        y: 289
        width: 160
        height: 24
        color: "#ffffff"
        text: qsTr("Code dec")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Itim"
        font.weight: Font.Normal
    }

    Text {
        id: home_nguyen_hai_minh
        width: 345
        height: 23
        color: "#ffffff"
        text: qsTr("home/nguyen-hai-minh")
        font.pixelSize: 18
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        anchors.verticalCenterOffset: -150
        anchors.horizontalCenterOffset: 250
        font.family: "Josefin Sans"
        font.weight: Font.Light
        anchors.centerIn: parent
    }

    Item {
        id: group_68
        x: 839
        y: 413
        width: 141
        height: 38
        Image {
            id: rectangle_68
            x: 0
            y: 0
            source: "/ui/assets/btn.png"
        }

        Item {
            id: group_60
            x: 11
            y: 2
            width: 111
            height: 30
            Text {
                id: view_data
                x: -13
                y: 0
                width: 130
                height: 30
                color: "#e7fff9"
                text: qsTr("View data")
                font.pixelSize: 22
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Jura"
                font.weight: Font.Normal
            }
        }
    }

    Item {
        id: group_69
        x: 534
        y: 414
        width: 141
        height: 38
        Image {
            id: rectangle_681
            x: 0
            y: 0
            source: "/ui/assets/btn.png"
        }

        Item {
            id: group_601
            x: 11
            y: 2
            width: 111
            height: 30
            Text {
                id: view_data1
                x: -25
                y: 0
                width: 137
                height: 30
                color: "#e7fff9"
                text: qsTr("View data")
                font.pixelSize: 22
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Jura"
                font.weight: Font.Normal
            }
        }
    }

    Item {
        id: group_70
        x: 248
        y: 413
        width: 141
        height: 38
        Image {
            id: rectangle_682
            x: 0
            y: 0
            source: "/ui/assets/btn.png"
        }

        Item {
            id: group_602
            x: 11
            y: 2
            width: 111
            height: 30
            Text {
                id: view_data2
                x: -1
                y: 1
                width: 121
                height: 30
                color: "#e7fff9"
                text: qsTr("View data")
                font.pixelSize: 22
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Jura"
                font.weight: Font.Normal
            }
        }
    }

    Item {
        id: group_71
        x: 40
        y: 413
        width: 141
        height: 38
        Image {
            id: rectangle_683
            x: 0
            y: 0
            source: "/ui/assets/btn.png"
        }

        Item {
            id: group_603
            x: 15
            y: 3
            width: 111
            height: 30
            Text {
                id: view_data3
                x: -22
                y: 0
                width: 134
                height: 30
                color: "#e7fff9"
                text: qsTr("View data")
                font.pixelSize: 22
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Jura"
                font.weight: Font.Normal
            }
        }
    }

    SvgPathItem {
        id: line_19_Stroke_
        x: 491
        y: 296
        width: 45
        height: 5
        strokeColor: "transparent"
        antialiasing: true
        fillColor: "#4d323d74"
        strokeWidth: 5
        rotation: -90
        path: "M 0 2.5 C 0 1.1192880868911743 1.1192880868911743 0 2.5 0 L 42.5 0 C 43.88071060180664 0 45 1.1192880868911743 45 2.5 C 45 3.8807119131088257 43.88071060180664 5 42.5 5 L 2.5 5 C 1.1192880868911743 5 0 3.8807119131088257 0 2.5 Z"
        strokeStyle: 1
        joinStyle: 0
    }

    SvgPathItem {
        id: line_20_Stroke_
        x: 492
        y: 361
        width: 44
        height: 5
        strokeColor: "transparent"
        antialiasing: true
        fillColor: "#4d323d74"
        strokeWidth: 5
        rotation: -90
        path: "M 0 2.5 C 0 1.1192880868911743 1.1192880868911743 0 2.5 0 L 41.5 0 C 42.88071060180664 0 44 1.1192880868911743 44 2.5 C 44 3.8807119131088257 42.88071060180664 5 41.5 5 L 2.5 5 C 1.1192880868911743 5 0 3.8807119131088257 0 2.5 Z"
        strokeStyle: 1
        joinStyle: 0
    }

    Item {
        id: group_62
        x: 389
        y: 279
        width: 109
        height: 35
        Rectangle {
            id: rectangle_70
            x: 17
            y: 0
            width: 92
            height: 35
            color: "#6935416c"
            radius: 8
        }

        Text {
            id: element
            x: 85
            y: 2
            width: 21
            height: 25
            color: "#ffffff"
            text: qsTr(">")
            font.pixelSize: 26
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            rotation: 88.961
            font.family: "Josefin Sans"
            font.weight: Font.Light
        }

        Text {
            id: element1
            width: 77
            height: 23
            color: "#ffffff"
            text: qsTr("8000")
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.verticalCenterOffset: 2
            anchors.horizontalCenterOffset: -16
            font.family: "Josefin Sans"
            font.weight: Font.Light
            anchors.centerIn: parent
        }
    }

    Item {
        id: group_66
        x: 385
        y: 210
        width: 114
        height: 35
        Rectangle {
            id: rectangle_701
            x: 0
            y: 4
            width: 114
            height: 35
            color: "#6935416c"
            radius: 8
        }

        Text {
            id: element2
            x: 90
            y: 10
            width: 21
            height: 25
            color: "#ffffff"
            text: qsTr(">")
            font.pixelSize: 26
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            rotation: 88.961
            font.family: "Josefin Sans"
            font.weight: Font.Light
        }

        Text {
            id: default1
            width: 77
            height: 23
            color: "#ffffff"
            text: qsTr("Default")
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.verticalCenterOffset: 2
            anchors.horizontalCenterOffset: -15
            font.family: "Josefin Sans"
            font.weight: Font.Light
            anchors.centerIn: parent
        }
    }

    Item {
        id: group_64
        x: 961
        y: 393
        width: 92
        height: 35
        Rectangle {
            id: rectangle_702
            x: -60
            y: -111
            width: 92
            height: 35
            color: "#6935416c"
            radius: 8
        }

        Text {
            id: element3
            x: 8
            y: -106
            width: 21
            height: 25
            color: "#ffffff"
            text: qsTr(">")
            font.pixelSize: 26
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            rotation: 88.961
            font.family: "Josefin Sans"
            font.weight: Font.Light
        }
    }

    Item {
        id: group_63
        x: 872
        y: 346
        width: 117
        height: 35
        Rectangle {
            id: rectangle_703
            x: 9
            y: 0
            width: 109
            height: 35
            color: "#6935416c"
            radius: 8
        }

        Text {
            id: hz
            width: 77
            height: 23
            color: "#ffffff"
            text: qsTr("50Hz")
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.verticalCenterOffset: 2
            anchors.horizontalCenterOffset: -20
            font.family: "Josefin Sans"
            font.weight: Font.Light
            anchors.centerIn: parent
        }

        Text {
            id: element4
            x: 94
            y: 2
            width: 21
            height: 25
            color: "#ffffff"
            text: qsTr(">")
            font.pixelSize: 26
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            rotation: 88.961
            font.family: "Josefin Sans"
            font.weight: Font.Light
        }
    }

    Rectangle {
        id: rectangle_71
        x: 406
        y: 349
        width: 92
        height: 35
        color: "#6935416c"
        radius: 8
    }

    Text {
        id: uInt8
        width: 77
        height: 23
        color: "#ffffff"
        text: qsTr("UInt8")
        font.pixelSize: 18
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        anchors.verticalCenterOffset: 51
        anchors.horizontalCenterOffset: 414
        font.family: "Josefin Sans"
        font.weight: Font.Light
        anchors.centerIn: parent
    }

    Text {
        id: element5
        x: 474
        y: 351
        width: 21
        height: 25
        color: "#ffffff"
        text: qsTr(">")
        font.pixelSize: 26
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        rotation: 88.961
        font.family: "Josefin Sans"
        font.weight: Font.Light
    }

    SvgPathItem {
        id: line_21_Stroke_
        x: 492
        y: 231
        width: 43
        height: 5
        strokeColor: "transparent"
        antialiasing: true
        fillColor: "#4d323d74"
        strokeWidth: 5
        rotation: -90
        path: "M 0 2.5 C 0 1.1192880868911743 1.1192880868911743 0 2.5 0 L 40.5 0 C 41.88071060180664 0 43 1.1192880868911743 43 2.5 C 43 3.8807119131088257 41.88071060180664 5 40.5 5 L 2.5 5 C 1.1192880868911743 5 0 3.8807119131088257 0 2.5 Z"
        strokeStyle: 1
        joinStyle: 0
    }

    SvgPathItem {
        id: line_22_Stroke_
        x: 492
        y: 163
        width: 43
        height: 5
        strokeColor: "transparent"
        antialiasing: true
        fillColor: "#4d323d74"
        strokeWidth: 5
        rotation: -90
        path: "M 0 2.5 C 0 1.1192880868911743 1.1192880868911743 0 2.5 0 L 40.5 0 C 41.88071060180664 0 43 1.1192880868911743 43 2.5 C 43 3.8807119131088257 41.88071060180664 5 40.5 5 L 2.5 5 C 1.1192880868911743 5 0 3.8807119131088257 0 2.5 Z"
        strokeStyle: 1
        joinStyle: 0
    }
}

