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
        id: about
        x: 50
        y: 8
        width: 291
        height: 52
        color: "#394251"
        radius: 8

        Text {
            id: text_about
            color: "#ffffff"
            text: qsTr("Loss Curve Results")
            anchors.fill: parent
            font.pixelSize: 28
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                    loader.source = "loss_curve_display.qml"
                }
        }
    }

    Rectangle {
        id: rectangle3
        x: 350
        y: 8
        width: 292
        height: 52
        color: "#394251"
        radius: 8
        Text {
            id: text3
            color: "#ffffff"
            text: qsTr("ROC Curve Results")
            anchors.fill: parent
            font.pixelSize: 28
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                    loader.source = "roc_curve_display.qml"
                }
        }
    }
    Rectangle {
        id: rectangle
        x: 650
        y: 8
        width: 292
        height: 52
        color: "#394251"
        radius: 8

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("PR Curve Results")
            anchors.fill: parent
            font.pixelSize: 28
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                    loader.source = "pr_curve_display.qml"
                }
        }
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
                folder: "file:///home/sparc/ESCA/result/gear"
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
                    color: "#000000"
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
                        let source = folderListModel.folder + '/' + fileName;
                        console.log(source);
                        DisplayResult.selectPRResult(source);
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
        source: "/ui/assets/no_image.jpg"
        fillMode: Image.PreserveAspectFit
        Connections {
            target: DisplayResult

            function onSetPRImage(imageName) {
                console.log("Hi Giang PR imange")
                // console.log(imageName);
                image.source =imageName;
            }
        }
    }
    Rectangle {
        id: rectangle4
        x: 37
        y: 81
        width: 211
        height: 43
        color: "#69000822"
        radius: 8
        border.color: "#ffffff"
        border.width: 2
        Text {
            id: text4
            color: "#ffffff"
            text: qsTr("Gear Dataset")
            anchors.fill: parent
            font.pixelSize: 23
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                rectangle5.border.color = "#000000"
                rectangle5.border.width = 1
                rectangle4.border.width = 2
                rectangle4.border.color = "#ffffff"
                folderListModel.folder = "file:///home/sparc/ESCA/result/gear"
                console.log(folderListModel.folder)
            }
        }
    }
    Rectangle {
        id: rectangle5
        x: 254
        y: 81
        width: 211
        height: 43
        color: "#69000822"
        radius: 8
        border.color: "#000000"
        border.width: 1
        Text {
            id: text5
            color: "#ffffff"
            text: qsTr("Park Dataset")
            anchors.fill: parent
            font.pixelSize: 23
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                rectangle4.border.color = "#000000"
                rectangle4.border.width = 1
                rectangle5.border.width = 2
                rectangle5.border.color = "#ffffff"
                folderListModel.folder = "file:///home/sparc/ESCA/result/park"
            }
        }
    }
}
