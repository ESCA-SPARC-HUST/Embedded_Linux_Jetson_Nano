import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Dialogs 1.0
import Qt.labs.platform 1.0
import QtMultimedia 5.15
import "qrc:/ui/component/QtQuick/Studio/Components"

Rectangle {
    id: rectangle
    x: 0
    y: -1
    width: 1024
    height: 500
    color: "#272d37"

    property string datasource: ''
    property string model: ''

    Rectangle {
        id: rectangle3
        x: 82
        y: 8
        width: 380
        height: 52
        color: "#69000822"
        radius: 8
        Text {
            id: text3
            color: "#ffffff"
            text: qsTr("Data")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                    loader.source = "realTimeInference_data.qml"
                }
        }
    }
    Rectangle {
        id: result
        x: 541
        y: 8
        width: 414
        height: 52
        color: "#394251"
        radius: 8

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("Result")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                loader.source = "realTimeInference_result.qml"
            }
        }
    }
    Rectangle {
        id: rectangle2
        x: 50
        y: 65
        width: 934
        height: 2
        color: "#ffffff"
    }

    Text {
        id: select_folder_to_store
        x: 46
        y: 138
        width: 312
        height: 24
        color: "#ffffff"
        text: qsTr("Data to inference")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Itim"

        Text {
            id: select_folder_to_store1
            x: 0
            y: 105
            width: 363
            height: 24
            color: "#ffffff"
            text: qsTr("Choose the model\n")
            font.pixelSize: 24
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Itim"
        }

        TextInput {
            id: textInput3
            x: 0
            y: 144
            width: 565
            height: 30
            color: "#ffffff"
            text: qsTr("")
            font.pixelSize: 20
            font.italic: true
        }

        Rectangle {
            id: rectangle_86
            x: 756
            y: 105
            width: 170
            height: 36
            color: "#6935416c"
            radius: 8
            Text {
                id: browser3
                color: "#ffffff"
                text: qsTr("Browser")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 26
                wrapMode: Text.Wrap
                font.weight: Font.Light
                font.family: "Josefin Sans"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            FolderDialog {
                id: folderDialog2
                currentFolder: viewer.folder
                folder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
                onAccepted: {

                    // handle choose file
                    textInput3.text = folderDialog2.folder
                    folderListModel.folder = folderDialog2.folder
                }
                onRejected: {
                    console.log("Canceled")
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    folderDialog2.open();
                }
            }
        }
    }

    TextInput {
        id: textInput2
        x: 46
        y: 177
        width: 565
        height: 30
        color: "#ffffff"
        text: qsTr("")
        font.pixelSize: 20
        font.italic: true
    }

    Rectangle {
        id: rectangle_85
        x: 802
        y: 138
        width: 170
        height: 36
        color: "#6935416c"
        radius: 8
        Text {
            id: browser2
            color: "#ffffff"
            text: qsTr("Browser")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 26
            wrapMode: Text.Wrap
            font.weight: Font.Light
            font.family: "Josefin Sans"
            anchors.horizontalCenter: parent.horizontalCenter
        }
        FolderDialog {
            id: folderDialog3
            currentFolder: viewer.folder
            folder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
            onAccepted: {

                // handle choose file
                textInput2.text = folderDialog3.folder
                folderListModel.folder = folderDialog3.folder
            }
            onRejected: {
                console.log("Canceled")
            }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                folderDialog3.open();
            }
        }
    }

    Rectangle {
        x: 766
        y: 412
        width: 216
        height: 52
        color: "#f30b0836"
        radius: 22
        Text {
            id: start_stop_Btn
            x: 24
            y: -10
            width: 168
            height: 68
            color: "#ffffff"
            text: qsTr("Execution")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 22
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                console.log("minhgay is here");
                datasource = textInput3.text;
                model = textInput2.text;

                BaseTraining.inference(datasource, model);
                }
            cursorShape: Qt.WaitCursor
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
        }
    }
}


