import QtQuick 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.0


Rectangle {
    id: frame_22
    width: 1024
    height: 500
    color: "#262e4b"

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
        id: choose_device_text
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
        id: bits_per_sample_text
        x: 49
        y: 355
        width: 203
        height: 23
        color: "#ffffff"
        text: qsTr("Bits per sample")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Itim"
        font.weight: Font.Normal
    }

    Text {
        id: channels_text
        x: 541
        y: 352
        width: 258
        height: 23
        color: "#ffffff"
        text: qsTr("Number of channels")
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
    }

    ComboBox {
        id: choose_device_combobox
        x: 302
        y: 143
        width: 195
        height: 35
        model: ["default", "Model 2", "Model 3"]

        // Customizing the appearance of items in the ComboBox
        delegate: Item {
            width: choose_device_combobox.width
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
                        choose_device_combobox.currentIndex = index
                    }
                }
            }
        }

        //            Signal handler for item selection change
        onCurrentIndexChanged: {
            var selectedItem = model[currentIndex] // Get the selected item
            console.log("Selected choose_device Item:", selectedItem)
            // Add logic here
        }
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

    ComboBox {
        id: sample_rate_combobox
        x: 303
        y: 284
        width: 195
        height: 35
        delegate: Item {
            width: sample_rate_combobox.width
            height: 30
            Rectangle {
                width: parent.width
                height: parent.height
                color: "#add8e6"
                border.color: "#e0a3339a"
                Text {
                    color: "#ffffff"
                    text: modelData
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        sample_rate_combobox.currentIndex = index
                    }
                }
            }
        }
        model: ["Model 1", "Model 2", "Model 3"]

        //            Signal handler for item selection change
        onCurrentIndexChanged: {
            var selectedItem = model[currentIndex] // Get the selected item
            console.log("Selected sample_rate Item:", selectedItem)
            // Add logic here
        }
    }

    ComboBox {
        id: codec_combobox
        x: 864
        y: 284
        width: 131
        height: 35
        delegate: Item {
            width: code_dec_combobox.width
            height: 30
            Rectangle {
                width: parent.width
                height: parent.height
                color: "#add8e6"
                border.color: "#e0a3339a"
                Text {
                    color: "#ffffff"
                    text: modelData
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        code_dec_combobox.currentIndex = index
                    }
                }
            }
        }
        model: ["UIntf8", "Model 2", "Model 3"]

        onCurrentIndexChanged: {
            var selectedItem = model[currentIndex] // Get the selected item
            console.log("Selected code_dec_combobox Item:", selectedItem)
            // Add logic here
        }
    }

    ComboBox {
        id: bits_per_sample_combobox
        x: 302
        y: 346
        width: 195
        height: 35
        delegate: Item {
            width: bits_per_sample_combobox.width
            height: 30
            Rectangle {
                width: parent.width
                height: parent.height
                color: "#add8e6"
                border.color: "#e0a3339a"
                Text {
                    color: "#ffffff"
                    text: modelData
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        bits_per_sample_combobox.currentIndex = index
                    }
                }
            }
        }
        model: ["8", "16", "32"]

        onCurrentIndexChanged: {
            var selectedItem = model[currentIndex] // Get the selected item
            console.log("Selected bits_per_sample_combobox Item:", selectedItem)
            // Add logic here
        }
    }

    ComboBox {
        id: channels_combobox
        x: 864
        y: 347
        width: 131
        height: 35
        delegate: Item {
            width: channels_combobox.width
            height: 30
            Rectangle {
                width: parent.width
                height: parent.height
                color: "#add8e6"
                border.color: "#e0a3339a"
                Text {
                    color: "#ffffff"
                    text: modelData
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        channels_combobox.currentIndex = index
                    }
                }
            }
        }
        model: ["2", "Model 2", "Model 3"]

        onCurrentIndexChanged: {
            var selectedItem = model[currentIndex] // Get the selected item
            console.log("Selected channels_combobox Item:", selectedItem)
            // Add logic here
        }
    }

    Text {
        id: choose_folder_text
        x: 49
        y: 223
        width: 266
        height: 21
        color: "#ffffff"
        text: qsTr("File's storage location")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Itim"
        font.weight: Font.Normal
    }

    TextInput {
        id: folder_to_store
        x: -3
        y: -3
        width: 487
        height: 24
        color: "#ffffff"
        text: "/home/data"
        font.pixelSize: 18
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.NoWrap
        anchors.verticalCenterOffset: -15
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: 79
        font.family: "Josefin Sans"
        font.weight: Font.Light


        onTextChanged: {
            // add handler
        }

    }

    Rectangle {
        id: open_file_rec
        x: 845
        y: 216
        width: 150
        height: 36
        color: "#6935416c"
        radius: 8

        Text {
            x: 16
            y: 8
            width: 86
            height: 20
            color: "#ffffff"
            text: qsTr("Browser")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Itim"
            font.weight: Font.Normal
        }



        FileDialog {
            id: choose_file_save_record
            title: "Please choose a file"



            onAccepted: {

                function truncateText(text, maxLength) {
                    if (text.length > maxLength) {
                        return text.substring(41, maxLength - 3) + "..."
                    } else {
                        return text
                    }
                }

                console.log("You choose: " + choose_file_save_record.folder)
                console.log("You choose: " + truncateText("" + choose_file_save_record.folder, 60))


                // handle choose file
                folder_to_store.text = truncateText("" + choose_file_save_record.folder, 92);
            }
            onRejected: {
                console.log("Canceled")
                //                Qt.quit()
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                choose_file_save_record.open();
            }
        }

        SvgPathItem {
            width: 23
            height: 20
            anchors.verticalCenterOffset: 2
            path: "M 0 2.2857142857142856 C 0 1.0250000272478375 1.1771484687924385 0 2.625 0 L 8.043164312839508 0 C 8.826562765985727 0 9.5771484375 0.27142851693289616 10.130859375 0.7535713740757533 L 11.890429437160492 2.2857142857142856 L 18.375 2.2857142857142856 C 19.82285153120756 2.2857142857142856 21 3.310714312962123 21 4.571428571428571 L 21 13.714285714285714 C 21 14.974999972752162 19.82285153120756 16 18.375 16 L 2.625 16 C 1.1771484687924385 16 0 14.974999972752162 0 13.714285714285714 L 0 2.2857142857142856 Z M 2.625 1.7142857142857142 C 2.2640624921768904 1.7142857142857142 1.96875 1.9714285646166119 1.96875 2.2857142857142856 L 1.96875 13.714285714285714 C 1.96875 14.028571435383387 2.2640624921768904 14.285714285714285 2.625 14.285714285714285 L 18.375 14.285714285714285 C 18.73593750782311 14.285714285714285 19.03125 14.028571435383387 19.03125 13.714285714285714 L 19.03125 4.571428571428571 C 19.03125 4.257142850330897 18.73593750782311 4 18.375 4 L 11.755078375339508 4 C 11.320312734693289 4 10.901952624320984 3.8500001089913503 10.594335436820984 3.5821429661342075 L 8.740429937839508 1.9642857142857142 C 8.555859625339508 1.8035714285714284 8.305664316751063 1.7142857142857142 8.043164312839508 1.7142857142857142 L 2.625 1.7142857142857142 Z"
            antialiasing: true
            strokeStyle: 1
            anchors.centerIn: parent
            strokeWidth: 1
            anchors.horizontalCenterOffset: 51
            joinStyle: 0
            strokeColor: "#00000000"
        }
    }
}


