import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Dialogs 1.0
import FileManagerIm 1.0

Rectangle {

    id: root_file_manager
    width: 1024
    height: 500
    color: "#272D37"
    property string foldername: fileModel.fileList[0].fileName.toString()

    ListView {
        id: file_list_view
        width: 800
        anchors.centerIn: parent
        height: 500

        model: ListModel {
            ListElement { text: "/data" }
        }

        Component.onCompleted: {
            // Use a for loop to loop throw fileList
            console.log(fileModel.fileList.length);
            for (var i = 2; i < fileModel.fileList.length; ++i) {
                model.append({text: "" + fileModel.fileList[i].fileName.toString() });
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
                anchors.margins: 50

                Text {
                    anchors.centerIn: parent
                    text: model.text
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("Item clicked:", model.text);
                        // Add your custom logic here
                        fileModel.folder = fileModel.folder + "/" + model.text;
                    }
                }
            }
        }
    }

    FileManager {
        id: fileModel
        folder: "/home/nguyen-hai-minh/BaseCodeESCA/Embedded_Linux_Jetson_Nano/record-module/data"
    }

}
