import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
// Import folder list
import Qt.labs.folderlistmodel 2.6


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
                    text: fileIsDir ? "" : ((fileSize / 1024).toFixed(2) + " KB")
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
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            anchors.leftMargin: 0
            // cursorShape: Qt.WaitCursor
            // onClicked: {
                // console.log("minhgay is here");
                // FeatureAudioExtractor.extractMFCC("Hanoi")
            // }
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
