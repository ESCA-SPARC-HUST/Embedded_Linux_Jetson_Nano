import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
import QtQuick.Dialogs 1.0

Rectangle {
    id: frame_1
    width: 1024
    height: 500
    color: "transparent"

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
        id: rectangle
        x: 360
        y: 8
        width: 300
        height: 52
        color: "#394251"
        radius: 8

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("Realtime inference")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
//                    loader.source = "baseLearning_traning.qml"
                }
        }
    }

    Rectangle {
        id: rectangle2
        x: 41
        y: 66
        width: 943
        height: 2
        color: "#ffffff"
    }
    // End header

    Rectangle {
        id: rectangle4
        x: 38
        y: 82
        width: 949
        height: 400
        color: "#1b2a42"

    }

    Rectangle {
        id: rectangle6
        x: 38
        y: 215
        width: 52
        height: 99
        color: "#a9acc6"
        radius: 50
        Text {
            id: text4
            text: qsTr("<")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 70
            anchors.horizontalCenter: parent.horizontalCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
//                test_loss.visible = !test_loss.visible
//                val_loss.visible = !val_loss.visible
//                roc_curve.visible = !roc_curve.visible
//                pr_curve.visible = !pr_curve.visible
//                train_loss.visible = !train_loss.visible
            }
        }
    }

    Rectangle {
        id: rectangle8
        x: 935
        y: 215
        width: 52
        height: 99
        color: "#a9acc6"
        radius: 50
        Text {
            id: text6
            text: qsTr(">")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 70
            anchors.horizontalCenter: parent.horizontalCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
//                test_loss.visible = !test_loss.visible
//                val_loss.visible = !val_loss.visible
//                roc_curve.visible = !roc_curve.visible
//                pr_curve.visible = !pr_curve.visible
//                train_loss.visible = !train_loss.visible
            }
        }
    }

    Image {
        id: train_loss
        x: 92
        y: 142
        visible: true
        width: 860
        source: "/ui/assets/infer.png"
        fillMode: Image.PreserveAspectFit
    }

}
