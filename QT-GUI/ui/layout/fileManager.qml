import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Dialogs 1.0
import Qt.labs.platform 1.0
// Import folder list
import Qt.labs.folderlistmodel 2.6
// Import for play Audio
import QtMultimedia 5.15


Rectangle {
    id: frame_1
    width: 1024
    height: 500
    color: "transparent"

    // tool Bar
    Rectangle {
        id: rectangle_55
        x: 0
        y: 0
        width: 1024
        height: 500
        color: "#272D37"

        Rectangle {
            id: rectangle1
            x: 21
            y: 67
            width: 983
            height: 61
            color: "#ffffff"

            // backward feature
            Image {
                id: image
                x: 15
                y: 6
                width: 44
                height: 47
                source: "../assets/icons8-back-50.png"
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        folderListModel.folder = folderListModel.parentFolder
                        text3.text = folderListModel.folder
                    }
                }
            }
            // forward feature
            Image {
                id: image1
                x: 65
                y: 6
                width: 48
                height: 47
                source: "../assets/icons8-right-50.png"
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        // Use the new method to move forward in the folder hierarchy
                        folderListModel.popFolderFromStack();
                        text3.text = folderListModel.folder;
                    }
                }
            }

            // choose folder feature
            Rectangle {
                id: rectangle2
                x: 129
                y: 7
                border.color: "black"
                width: 402
                height: 46
                radius: 10
                color: "#ffffff"
                TextField {
                    id: text3
                    x: 8
                    y: 0
                    width: 386
                    height: 46
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    placeholderText: "Choose folder to open"
                    maximumLength: 40
                    background: Rectangle {
                        border.width: 0
                        color: "transparent"
                    }
                }
                FolderDialog {
                    id: folderDialog
                    currentFolder: viewer.folder
                    folder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
                    onAccepted: {

                        // handle choose file
                        text3.text = folderDialog.folder
                        folderListModel.folder = folderDialog.folder
                    }
                    onRejected: {
                        console.log("Canceled")
                    }
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        folderDialog.open();
                    }
                }
            }

            // play audio feature
            Rectangle {
                id: rectangle3
                x: 550
                y: 7
                width: 83
                height: 46
                color: "#ffffff"
                radius: 10
                border.color: "black"

                Text {
                    id: text4
                    x: 21
                    y: 11
                    width: 49
                    height: 25
                    text: qsTr("Play")
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignLeft
                }
                // hander play audio feature
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (listView.selectedItemIndex !== -1) {
                            audioPlayer.source = folderListModel.get(listView.selectedItemIndex,"fileURL")
                            audioPlayer.play()
                        }
                    }
                }

            }

            // delete feture
            Rectangle {
                id: rectangle4
                x: 644
                y: 7
                width: 108
                height: 46
                color: "#ffffff"
                radius: 10
                border.color: "#000000"
                Text {
                    id: text5
                    x: 21
                    y: 11
                    width: 54
                    height: 27
                    text: qsTr("Delete")
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignLeft
                }
            }

            // import feature
            Rectangle {
                id: rectangle5
                x: 764
                y: 7
                width: 108
                height: 46
                color: "#ffffff"
                radius: 10
                border.color: "#000000"
                Text {
                    id: text6
                    x: 21
                    y: 11
                    width: 54
                    height: 27
                    text: qsTr("Import")
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignLeft
                }
            }


            // share feature
            Rectangle {
                id: rectangle6
                x: 875
                y: 7
                width: 100
                height: 46
                color: "#ffffff"
                radius: 10
                border.color: "#000000"
                Text {
                    id: text7
                    x: 21
                    y: 11
                    width: 54
                    height: 27
                    text: qsTr("Share")
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignLeft
                }
            }
        }
    }

    // header
    Rectangle {
        id: rectangle_76
        x: 349
        y: 0
        width: 326
        height: 57
        color: "#69000822"
        radius: 8
        Text {
            x: 18
            y: 11
            width: 291
            height: 29
            color: "#ffffff"
            text: qsTr("File manager")
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.weight: Font.Normal
            font.underline: false
            font.italic: false
            font.family: "Itim"
            font.bold: false
        }
        anchors.horizontalCenter: rectLayout.horizontalCenter
    }

    // ListView Folder and File
    Rectangle {
        id: mainRect
        x: 19
        y: 135
        width: 986
        height: 318
        border.color: "black"
        ListView {
            id: listView

            // Initialization Selected Item For Hightlight
            property int selectedItemIndex: -1

            // property of list View
            x: 0
            y: 17
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
                id: rectangle
                width: parent.width
                height: 66
                border.color: "black"

                Text {
                    id: text1
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    width: 158
                    height: 22
                    text: fileName
                    font.pixelSize: 20
                }

                Text {
                    id: text2
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 20
                    width: 158
                    height: 22
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
                color: listView.selectedItemIndex  === index ? "#aaddff" : (fileIsDir ? "#e3e3e3" : "#ffffff")
                // --------------------------- END --------------------------------------------
            }
        }
    }

    MediaPlayer {
        id: audioPlayer
        source: ""
    }
}
