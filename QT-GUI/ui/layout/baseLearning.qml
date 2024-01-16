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
        id: about
        x: 41
        y: 8
        width: 147
        height: 52
        color: "#394251"
        radius: 8

        Text {
            id: text_about
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
                    loader.source = "baseLearning_data.qml"
                }
        }
    }

    Rectangle {
        id: rectangle3
        x: 207
        y: 8
        width: 388
        height: 52
        color: "#394251"
        radius: 8
        Text {
            id: text3
            color: "#ffffff"
            text: qsTr("Parameters Configure")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                    loader.source = "baseLearning_parameterConfigure.qml"
                }
        }
    }
    Rectangle {
        id: rectangle
        x: 615
        y: 8
        width: 195
        height: 52
        color: "#394251"
        radius: 8

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("Training")
            anchors.fill: parent
            font.pixelSize: 33
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                    loader.source = "baseLearning_traning.qml"
                }
        }
    }

    Rectangle {
        id: rectangle1
        x: 827
        y: 8
        width: 157
        height: 52
        color: "#69000822"
        radius: 8
        Text {
            id: text2
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
                loader.source = "baseLearning_result.qml"
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
                test_loss.visible = !test_loss.visible
                val_loss.visible = !val_loss.visible
                roc_curve.visible = !roc_curve.visible
                pr_curve.visible = !pr_curve.visible
                train_loss.visible = !train_loss.visible
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
                test_loss.visible = !test_loss.visible
                val_loss.visible = !val_loss.visible
                roc_curve.visible = !roc_curve.visible
                pr_curve.visible = !pr_curve.visible
                train_loss.visible = !train_loss.visible
            }
        }
    }

    Image {
        id: train_loss
        x: 92
        y: 142
        visible: true
        width: 356
        height: 228
        source: "/ui/assets/trainLoss.png"
        fillMode: Image.PreserveAspectFit
    }


    Image {
        id: test_loss
        x: 378
        y: 137
        visible: true
        width: 346
        height: 240
        source: "/ui/assets/testLoss.png"
        fillMode: Image.PreserveAspectFit
    }


    Image {
        id: val_loss
        x: 667
        y: 115
        visible: true
        width: 258
        height: 282
        source: "/ui/assets/valLoss.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: roc_curve
        visible: false
        x: 139
        y: 105
        source: "/ui/assets/rocCurve.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: pr_curve
        visible: false
        x: 510
        y: 103
        width: 397
        height: 338
        source: "/ui/assets/prCurve.png"
        fillMode: Image.PreserveAspectFit
    }
}
