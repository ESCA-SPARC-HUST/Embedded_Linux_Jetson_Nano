import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
// Import folder list
import Qt.labs.folderlistmodel 2.6

//Rectangle {
//    id: frame_1
//    width: 1024
//    height: 500
//    color: "transparent"

//    Rectangle {
//        id: rectangle_55
//        x: 0
//        y: 0
//        width: 1024
//        height: 500
//        color: "#272D37"
//    }
//    Rectangle {
//        id: rectangle_76
//        x: 369
//        y: 26
//        width: 287
//        height: 71
//        color: "#69000822"
//        radius: 8
//        anchors.horizontalCenter: rectLayout.horizontalCenter
//        Text {
//            x: 24
//            y: 21
//            width: 239
//            height: 29
//            color: "#ffffff"
//            text: qsTr("Spliting Audio")
//            font.pixelSize: 33
//            horizontalAlignment: Text.AlignHCenter
//            verticalAlignment: Text.AlignVCenter
//            wrapMode: Text.WordWrap
//            font.underline: false
//            font.italic: false
//            font.bold: false
//            font.weight: Font.Normal
//            font.family: "Itim"
//        }
//    }

//    Image {
//        id: rectangle_57
//        x: 18
//        y: 209
//        source: "assets/rectangle_57.svg"
//    }

//    Text {
//        id: select_folder_to_store
//        x: 30
//        y: 136
//        width: 312
//        height: 24
//        color: "#ffffff"
//        text: qsTr("Select folder to store")
//        font.pixelSize: 24
//        horizontalAlignment: Text.AlignLeft
//        verticalAlignment: Text.AlignVCenter
//        wrapMode: Text.Wrap
//        font.weight: Font.Normal
//        font.family: "Itim"
//    }

//    SvgPathItem {
//        id: line_21_Stroke_
//        x: 23
//        y: 96
//        width: 975
//        height: 1
//        strokeColor: "transparent"
//        strokeStyle: 1
//        joinStyle: 0
//        antialiasing: true
//        strokeWidth: 1
//        fillColor: "#ffffff"
//        path: "M 975 1 L 0 1 L 0 0 L 975 0 L 975 1 Z"
//    }


//    Image {
//        id: rectangle_58
//        x: 18
//        y: 290
//        source: "assets/rectangle_58.svg"
//    }

//    Rectangle {
//        id: rectangle_64
//        x: 806
//        y: 321
//        width: 182
//        height: 37
//        color: "#6935416c"
//        radius: 8

//    }
//    TextInput {
//        id: textInput
//        color: "#ffffff"
//        x: 848
//        y: 328
//        width: 99
//        height: 30
//        text: qsTr("10 minutes")
//        font.pixelSize: 20
//    }

//    Rectangle {
//        id: rectangle_83
//        x: 806
//        y: 169
//        width: 131
//        height: 36
//        color: "#6935416c"
//        radius: 8
//    }

//    Text {
//        id: set_time_to_start_record
//        x: 25
//        y: 328
//        width: 321
//        height: 24
//        color: "#ffffff"
//        text: qsTr("Time to split")
//        font.pixelSize: 24
//        horizontalAlignment: Text.AlignLeft
//        verticalAlignment: Text.AlignVCenter
//        wrapMode: Text.Wrap
//        font.weight: Font.Normal
//        font.family: "Itim"
//    }

//    Rectangle {
//        id: rectangle
//        x: 757
//        y: 407
//        width: 216
//        height: 52
//        color: "#f30b0836"
//        radius: 22

//        Text {
//            id: start_stop_Btn
//            x: 24
//            y: -10
//            width: 168
//            height: 68
//            color: "#ffffff"
//            text: qsTr("Excution")
//            horizontalAlignment: Text.AlignHCenter
//            verticalAlignment: Text.AlignVCenter
//            font.pointSize: 22
//        }

//        MouseArea {
//            id: mouseArea
//            anchors.fill: parent
//            anchors.rightMargin: 0
//            anchors.bottomMargin: 0
//            anchors.topMargin: 0
//            anchors.leftMargin: 0
//            cursorShape: Qt.WaitCursor
//            onClicked: {
//                console.log("minhgay is here");
//            }
//        }
//    }

//    Text {
//        id: browser
//        width: 113
//        height: 23
//        color: "#ffffff"
//        text: qsTr("Browser")
//        font.pixelSize: 26
//        horizontalAlignment: Text.AlignRight
//        verticalAlignment: Text.AlignVCenter
//        wrapMode: Text.Wrap
//        font.weight: Font.Light
//        anchors.centerIn: parent
//        anchors.horizontalCenterOffset: 360
//        anchors.verticalCenterOffset: -63
//        font.family: "Josefin Sans"
//    }

//    Rectangle {
//        id: rectangle_82
//        x: 943
//        y: 169
//        width: 45
//        height: 36
//        color: "#6935416c"
//        radius: 8
//    }

//    SvgPathItem {
//        id: vector
//        anchors.left: parent.left
//        anchors.right: parent.right
//        anchors.top: parent.top
//        anchors.bottom: parent.bottom
//        anchors.leftMargin: 953
//        strokeColor: "transparent"
//        anchors.bottomMargin: 253
//        strokeStyle: 1
//        joinStyle: 0
//        anchors.rightMargin: 44
//        antialiasing: true
//        strokeWidth: 1
//        fillColor: "#ffffff"
//        anchors.topMargin: 224
//        path: "M 0 3.2857142857142856 C 0 1.4734375391687664 1.5134766027331352 0 3.375 0 L 10.341211259365082 0 C 11.34843784198165 0 12.3134765625 0.39017849309103825 13.025390625 1.0832588502338953 L 15.287694990634918 3.2857142857142856 L 23.625 3.2857142857142856 C 25.486523397266865 3.2857142857142856 27 4.759151824883052 27 6.571428571428571 L 27 19.714285714285715 C 27 21.526562460831233 25.486523397266865 23 23.625 23 L 3.375 23 C 1.5134766027331352 23 0 21.526562460831233 0 19.714285714285715 L 0 3.2857142857142856 Z M 3.375 2.4642857142857144 C 2.910937489941716 2.4642857142857144 2.53125 2.83392856163638 2.53125 3.2857142857142856 L 2.53125 19.714285714285715 C 2.53125 20.16607143836362 2.910937489941716 20.535714285714285 3.375 20.535714285714285 L 23.625 20.535714285714285 C 24.089062510058284 20.535714285714285 24.46875 20.16607143836362 24.46875 19.714285714285715 L 24.46875 6.571428571428571 C 24.46875 6.119642847350665 24.089062510058284 5.75 23.625 5.75 L 15.113672196865082 5.75 C 14.554687801748514 5.75 14.016796231269836 5.5343751566750665 13.621288418769836 5.149330513817923 L 11.237695634365082 2.823660714285714 C 11.000390946865082 2.5926339285714284 10.678711264394224 2.4642857142857144 10.341211259365082 2.4642857142857144 L 3.375 2.4642857142857144 Z"
//    }

//    Text {
//        id: select_folder_to_store1
//        x: 27
//        y: 229
//        width: 422
//        height: 24
//        color: "#ffffff"
//        text: qsTr("Select folder to store file after split")
//        font.pixelSize: 24
//        horizontalAlignment: Text.AlignLeft
//        verticalAlignment: Text.AlignVCenter
//        wrapMode: Text.Wrap
//        font.weight: Font.Normal
//        font.family: "Itim"
//    }

//    Rectangle {
//        id: rectangle_84
//        x: 806
//        y: 262
//        width: 131
//        height: 36
//        color: "#6935416c"
//        radius: 8
//    }

//    Text {
//        id: browser1
//        x: 1
//        y: 1
//        width: 113
//        height: 23
//        color: "#ffffff"
//        text: qsTr("Browser")
//        font.pixelSize: 26
//        horizontalAlignment: Text.AlignRight
//        verticalAlignment: Text.AlignVCenter
//        wrapMode: Text.Wrap
//        font.weight: Font.Light
//        font.family: "Josefin Sans"
//        anchors.verticalCenterOffset: 32
//        anchors.horizontalCenterOffset: 360
//        anchors.centerIn: parent
//    }

//    Rectangle {
//        id: rectangle_85
//        x: 943
//        y: 262
//        width: 45
//        height: 36
//        color: "#6935416c"
//        radius: 8
//    }

//    TextInput {
//        id: textInput1
//        x: 30
//        y: 268
//        width: 565
//        height: 30
//        color: "#ffffff"
//        text: qsTr("home/nguyen-lam-nghia")
//        font.pixelSize: 20
//        font.italic: true
//    }

//    TextInput {
//        id: textInput2
//        x: 30
//        y: 175
//        width: 565
//        height: 30
//        color: "#ffffff"
//        text: qsTr("home/nguyen-lam-nghia")
//        font.pixelSize: 20
//        font.italic: true
//    }
//}


Rectangle {
    id: frame_1
    width: 1024
    height: 500
    color: "transparent"

    // BACKGOUND
    Rectangle {
        id: rectangle_55
        x: 0
        y: 0
        width: 1024
        height: 500
        color: "#272D37"
    }

    // HEADER
    Rectangle {
        id: rectangle_76
        x: 369
        y: 14
        width: 287
        height: 60
        color: "#69000822"
        radius: 8
        anchors.horizontalCenter: rectLayout.horizontalCenter
        Text {
            color: "#ffffff"
            text: qsTr("Process Data")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.underline: false
            font.italic: false
            font.bold: false
            font.weight: Font.Normal
            font.family: "Itim"
        }
    }
    // filemanager


    Rectangle {
        id: mainRect
        x: 25
        y: 110
        width: 448
        height: 323
//        border.color: "black"
        color: "#272d37"
        ListView {
            id: listView
            // Initialization Selected Item For Hightlight
            property int selectedItemIndex: -1

            // property of list View
            x: 0
            y: 42
            width: parent.width
            height: parent.height
            clip: true
            model: FolderListModel {
                id: folderListModel
                showDirsFirst: true

                // If add filters then remove
                // nameFilters: ["*.mp3", "*.flac"]


                // ------------------ Hander forward feature ------------------
                // Add a stack property to store navigation history
                property var folderStack: []

                onFolderChanged: {
                    // Push the current folder onto the stack when it changes
                    folderStack.push(folder)
                }

                function popFolderFromStack() {
                    // Pop a folder from the stack
                    if (folderStack.length > 1) {
                        folderStack.pop();
                        folder = folderStack[folderStack.length - 1];
                    }
                }

                // ------------------------- end ------------------------------
            }

            delegate: Rectangle {
                width: parent.width
                height: 66
                border.color: "black"
                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    width: 158
                    height: 22
                    color: "#ffffff"
                    text: fileName
                    font.pixelSize: 20
                }

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 20
                    width: 158
                    height: 22
                    color: "#ffffff"
                    text: fileIsDir ? "" : (fileSize + " bytes")
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignRight
                }

                // --------------------- Hander hightlight clicked item ---------------------
                // Thêm MouseArea để bắt sự kiện nhấp chuột
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        // Đặt màu nền cho item được chọn
                        listView.selectedItemIndex = index;
                    }
                }
                // Sử dụng biến selectedItemIndex để xác định xem item có được chọn hay không
                color: listView.selectedItemIndex  === index ? "#aaddff" : (fileIsDir ? "#e3e3e3" : "#394251")
                // --------------------------- END --------------------------------------------
            }
        }
    }

    // menu
    Rectangle {
        id: rectangle5
        x: 96
        y: 101
        width: 306
        height: 43
        color: "#69000822"
        radius: 8
        Text {
            id: text5
            color: "#ffffff"
            text: qsTr("Select files to process")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    // ruler
    Rectangle {
        id: rectangle
        x: 514
        y: 101
        width: 2
        height: 373
        color: "#ffffff"
    }

    //Select processing feature
    Rectangle {
        id: rectangle6
        x: 627
        y: 101
        width: 306
        height: 43
        color: "#69000822"
        radius: 8
        Text {
            id: text6
            color: "#ffffff"
            text: qsTr("Select processing feature")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle7
        x: 556
        y: 178
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text7
            color: "#ffffff"
            text: qsTr("bfcc.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle8
        x: 715
        y: 178
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text8
            color: "#ffffff"
            text: qsTr("cqcc.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle9
        x: 872
        y: 178
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text9
            color: "#ffffff"
            text: qsTr("gfcc.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle10
        x: 556
        y: 250
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text10
            color: "#ffffff"
            text: qsTr("lfcc.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle11
        x: 556
        y: 327
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text11
            color: "#ffffff"
            text: qsTr("msrcc.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle12
        x: 556
        y: 400
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text12
            color: "#ffffff"
            text: qsTr("psrcc.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle13
        x: 715
        y: 250
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text13
            color: "#ffffff"
            text: qsTr("lpc.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle14
        x: 715
        y: 327
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text14
            color: "#ffffff"
            text: qsTr("ngcc.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle15
        x: 715
        y: 400
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text15
            color: "#ffffff"
            text: qsTr("rplr.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle16
        x: 872
        y: 250
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text16
            color: "#ffffff"
            text: qsTr("mfcc.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle17
        x: 872
        y: 327
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text17
            color: "#ffffff"
            text: qsTr("pncc.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle18
        x: 872
        y: 400
        width: 130
        height: 43
        color: "#394251"
        radius: 8
        Text {
            id: text18
            color: "#ffffff"
            text: qsTr("spfeats.py")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

}

/*##^##
Designer {
    D{i:0;uuid:"858b790d-cb73-5e2b-a692-48e572ab6f81"}D{i:3}
}
##^##*/
