import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Dialogs 1.0
import FileManagerIm 1.0

Rectangle {
    visible: true
    width: 800
    height: 600

    ListView {
        id: fileListView
        anchors.fill: parent
        model: fileModel
        delegate: Item {
            width: parent.width
            height: 50

            Rectangle {
                width: parent.width
                height: 50
                color: fileModel.isDir ? "lightblue" : "lightgreen"

                Text {
                    anchors.centerIn: parent
                    text: fileModel.fileList[2].filePath.toString();
                    Component.onCompleted: {
                        console.log("File List:", fileModel)
                    }
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (fileModel.isDir) {
                            fileModel.folder = fileModel.filePath
                        } else {
                            console.log("Selected file:", fileModel.fileList[2].filePath.toString())
                        }
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
