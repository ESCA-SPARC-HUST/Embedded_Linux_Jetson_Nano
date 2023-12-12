import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Dialogs 1.0
import FileManagerIm 1.0

Rectangle {
    visible: true
    width: 1024
    height: 500

    ListView {
        id: file_list_view
        width: 800
        anchors.centerIn: parent
        height: 500

        model: ListModel {
            ListElement { text: "/home" }
        }

        Component.onCompleted: {
            // Use a for loop to loop throw fileList
            console.log(fileModel.fileList.length);
            for (var i = 0; i < fileModel.fileList.length; ++i) {
                model.append({text: "" + fileModel.fileList[i].filePath.toString()});
            }
        }

        delegate: Item {
            width: parent.width
            height: 50
            Rectangle {
                width: parent.width
                height: parent.height
                color: "lightblue"
                border.color: "blue"

                Text {
                    anchors.centerIn: parent
                    text: model.text
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("Item clicked:", model.text);
                        // Add your custom logic here
                    }
                }
            }
        }
    }

    FileManager {
        id: fileModel
        folder: "/"
    }

}
