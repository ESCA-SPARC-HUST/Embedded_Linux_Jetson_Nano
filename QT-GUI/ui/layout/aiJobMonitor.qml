import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
// Import folder list
import Qt.labs.folderlistmodel 2.6

Rectangle {
    width: 1024
    height: 500
    color: "#272d37"

    // HEADER
    Rectangle {
        id: rectangle3
        x: 50
        y: 8
        width: 305
        height: 52
        color: "#394251"
        radius: 8
        Text {
            id: text3
            color: "#ffffff"
            text: qsTr("System Infomation")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                    loader.source = "systemInformation.qml"
                }
        }
    }
    Rectangle {
        id: rectangle
        x: 366
        y: 8
        width: 293
        height: 52
        color: "#394251"
        radius: 8

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("Real-time monitor")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                    loader.source = "realTimeMonitor.qml"
                }
        }
    }

    Rectangle {
        id: rectangle1
        x: 672
        y: 8
        width: 305
        height: 52
        color: "#69000822"
        radius: 8
        Text {
            id: text2
            color: "#ffffff"
            text: qsTr("AI job monitor")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                loader.source = "aiJobMonitor.qml"
            }
        }
    }
    Rectangle {
        id: rectangle2
        x: 50
        y: 65
        width: 927
        height: 2
        color: "#ffffff"
    }
    // End header

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

    // Image render
    Image {
        id: image
        x: 489
        y: 81
        width: 535
        height: 365
        source: "/ui/assets/exResourceMonitoring.png"
        fillMode: Image.PreserveAspectFit
    }
    Rectangle {
        id: rectangle4
        x: 70
        y: 81
        width: 358
        height: 43
        color: "#69000822"
        radius: 8
        Text {
            id: text4
            color: "#ffffff"
            text: qsTr("Choose folder to open")
            anchors.fill: parent
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
