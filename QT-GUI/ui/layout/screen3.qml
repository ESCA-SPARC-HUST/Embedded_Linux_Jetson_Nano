import QtQuick 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
import QtQuick.Controls 2.15

Rectangle {
    id: frame_22
    width: 1024
    height: 500
    color: "#141619"

    Rectangle {
        id: rectangle_55
        x: 0
        y: 0
        width: 1024
        height: 500
        color: "#262e4b"
        radius: 32
    }

    Image {
        id: rectangle_60
        x: 20
        y: 270
        source: "/ui/assets/rec.png"
    }

    Image {
        id: rectangle_58
        x: 20
        y: 120
        width: 989
        height: 80
        source: "/ui/assets/rec.png"
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
        y: 150
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

    Image {
        id: rectangle_68
        x: 677
        y: 419
        width: 224
        height: 58
        source: "/ui/assets/btn.png"

        Text {
            x: 30
            y: 7
            width: 170
            height: 42
            color: "#ffffff"
            text: qsTr("Save")
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Itim"
            font.weight: Font.Normal
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

    ComboBox {
        id: comboBox
        x: 302
        y: 143
        width: 195
        height: 35
        model: ["default", "hw:CARD=sofhdadsp,DEV=0", "alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp_6__source"]

        // Customizing the appearance of items in the ComboBox
        delegate: Item {
            width: comboBox.width
            height: 30

            Rectangle {
                width: parent.width
                height: parent.height
                color: "lightblue" // Background color
                border.color: "#e0a3339a"

                Text {
                    anchors.centerIn: parent
                    text: modelData
                    color: "white" // Set the text color
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        comboBox.currentIndex = index
                    }
                }
            }
        }

        //            Signal handler for item selection change
        onCurrentIndexChanged: {
            var selectedItem = model[currentIndex] // Get the selected item
            console.log("Selected Item:", selectedItem)
            // Add logic here
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
        x: 493
        y: 150
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

    Rectangle {
        id: rectangle_76
        x: 389
        y: 29
        width: 246
        height: 52
        color: "#69000822"
        radius: 8
        Text {
            x: 78
            y: 8
            color: "#ffffff"
            text: qsTr("Setting")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 24
            font.bold: false
        }
    }
}



