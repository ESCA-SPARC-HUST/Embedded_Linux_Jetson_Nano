import QtQuick 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"

Rectangle {
    id: frame_22
    width: 1024
    height: 500
    color: "#141619"

    Item {
        id: backgroundImg
        x: 0
        y: 0
        width: 1024
        height: 500
        Item {
            id: group
            x: 0
            y: 0
            width: 1024
            height: 500
            opacity: 0.5
            Item {
                id: group1
                x: 0
                y: 0
                width: 1024
                height: 500
                Image {
                    id: rectangle
                    source: "/ui/assets/Gravity Forces Blue Icon Game Presentation(10).svg"
                    anchors.centerIn: parent
                }
            }
        }

        Text {
            id: recording_audio_text
            width: 140
            height: 29
            color: "#ffffff"
            text: qsTr("Recording Audio")
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.verticalCenterOffset: -33
            font.weight: Font.Medium
            font.family: "Josefin Sans"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -366
        }

        Text {
            id: base_learning_text
            width: 140
            height: 28
            color: "#ffffff"
            text: qsTr("Base Learning")
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.verticalCenterOffset: 191
            font.weight: Font.Medium
            font.family: "Josefin Sans"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -364
        }

        Text {
            id: tranfer_learning_text
            width: 140
            height: 28
            color: "#ffffff"
            text: qsTr("Tranfer Learning")
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.verticalCenterOffset: 191
            font.weight: Font.Medium
            font.family: "Josefin Sans"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -113
        }

        Text {
            id: realtime_inference_text
            width: 156
            height: 27
            color: "#ffffff"
            text: qsTr("Real-time inference")
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.verticalCenterOffset: 192
            font.weight: Font.Medium
            font.family: "Josefin Sans"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 134
        }

        Text {
            id: system_config_text
            width: 156
            height: 28
            color: "#ffffff"
            text: qsTr("System Config")
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.verticalCenterOffset: 191
            font.weight: Font.Medium
            font.family: "Josefin Sans"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 384
        }

        Text {
            id: process_file_text
            width: 140
            height: 29
            color: "#ffffff"
            text: qsTr("Process File")
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.verticalCenterOffset: -33
            font.weight: Font.Medium
            font.family: "Josefin Sans"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -113
        }

        Text {
            id: file_manager_text
            width: 140
            height: 29
            color: "#ffffff"
            text: qsTr("File Manager")
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.verticalCenterOffset: -30
            font.weight: Font.Medium
            font.family: "Josefin Sans"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 133
        }

        Text {
            id: system_performance_text
            width: 175
            height: 29
            color: "#ffffff"
            text: qsTr("System Performance")
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.verticalCenterOffset: -33
            font.weight: Font.Medium
            font.family: "Josefin Sans"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 391
        }

        Rectangle {
            id: base_learning_rec
            width: 145
            height: 137
            opacity: 0.2
            color: "#8000b2ff"
            radius: 10
            anchors.verticalCenterOffset: 94
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -367
            Image {
                id: rectangle1710
                source: ""
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
            }
            MouseArea {
                id: base_learning_ma
                anchors.fill: parent
                anchors.leftMargin: 0
                onClicked: {
                    loader.source = "/ui/layout/baseLearning.qml"
                }
            }
        }

        Rectangle {
            id: transfer_learning_rec
            width: 144
            height: 137
            opacity: 0.2
            color: "#8000b2ff"
            radius: 10
            anchors.verticalCenterOffset: 94
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -116

            MouseArea {
                id: tranfer_learning_ma
                anchors.fill: parent
                anchors.leftMargin: 0
                onClicked: {
                    loader.source = "/ui/layout/transferLearning.qml"
                }
            }
        }

        Rectangle {
            id: realtime_inference_rec
            width: 144
            height: 137
            opacity: 0.2
            color: "#8000b2ff"
            radius: 10
            anchors.verticalCenterOffset: 94
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 133

            MouseArea {
                id: realtime_inference_ma
                anchors.fill: parent
                anchors.rightMargin: 0
                onClicked: {
                    console.log("minh dai ca")
                    loader.source = "/ui/layout/screen2.qml"
                }
            }
        }

        Rectangle {
            id: system_config_rec
            width: 145
            height: 137
            opacity: 0.2
            color: "#8000b2ff"
            radius: 10
            anchors.verticalCenterOffset: 94
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 384

            MouseArea {
                id: system_config_ma
                anchors.fill: parent
                onClicked: {
                    loader.source = "/ui/layout/systemConfig.qml"
                }
            }
        }

        Rectangle {
            id: recording_audio_rec
            width: 145
            height: 139
            opacity: 0.2
            color: "#8000b2ff"
            radius: 10
            anchors.verticalCenterOffset: -131
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -367

            MouseArea {
                id: recording_audio_ma
                anchors.fill: parent
                anchors.leftMargin: 0
                onClicked: {
                    loader.source = "/ui/layout/recordingSound.qml"
                }
            }
        }

        Rectangle {
            id: process_file_rec
            width: 144
            height: 139
            opacity: 0.2
            color: "#8000b2ff"
            radius: 10
            anchors.verticalCenterOffset: -131
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -116

            MouseArea {
                id: process_file_ma
                anchors.fill: parent
                anchors.leftMargin: 0
                onClicked: {
                    loader.source = "/ui/layout/processData.qml"
                }
            }
        }

        Rectangle {
            id: file_manager_rec
            width: 144
            height: 139
            opacity: 0.2
            color: "#8000b2ff"
            radius: 10
            anchors.verticalCenterOffset: -131
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 133

            MouseArea {
                id: file_manager_ma
                anchors.fill: parent
                anchors.leftMargin: 0
                onClicked: {
                    loader.source = "/ui/layout/fileManager.qml"
                }
            }
        }

        Rectangle {
            id: system_performance_rec
            width: 145
            height: 139
            opacity: 0.2
            color: "#8000b2ff"
            radius: 10
            anchors.verticalCenterOffset: -131
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 384

            MouseArea {
                id: system_performance_ma
                anchors.fill: parent
                anchors.leftMargin: 0
                onClicked: {
                    loader.source = "/ui/layout/systemPerformance.qml"
                }
            }
        }
    }

    Image {
        id: gravityForcesBlueIconGamePresentation1
        x: 78
        y: 53
        width: 132
        height: 132
        source: "/ui/assets/recordIcon"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: fileManagerIcon
        x: 581
        y: 53
        width: 132
        height: 132
        source: "/ui/assets/fileManagerIcon.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: systemConfigIcon
        x: 832
        y: 276
        width: 132
        height: 132
        source: "/ui/assets/systemConfigIcon.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: systemPerformanceIcon
        x: 845
        y: 66
        width: 106
        height: 106
        source: "/ui/assets/systemPerformanceIcon.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: resultsData
        x: 581
        y: 276
        width: 132
        height: 132
        source: "/ui/assets/resultsData.png"
        fillMode: Image.PreserveAspectFit
    }


}
