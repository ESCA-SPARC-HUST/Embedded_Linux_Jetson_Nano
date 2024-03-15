import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
import QtQuick.Dialogs 1.0

import QtCharts 2.6
import QtMultimedia 5.15


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
        color: "#69000822"
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
        color: "#394251"
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
        id: rectangle5

        x: 798
        y: 420
        width: 179
        height: 54
        color: "#f30b0836"
        radius: 22

        Text {
            id: start_stop_Btn
            color: "#ffffff"
            text: qsTr("Execution")
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 22
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            anchors.leftMargin: 0
            cursorShape: Qt.WaitCursor
            onClicked: {
                console.log("minhgay is here");
            }
        }
    }

    ChartView {
        x: 111
        y: 60
        title: "Loss Training Chart"
        width: 800
        height: 360
        anchors.centerIn: parent
        antialiasing: true

        LineSeries {
            id: series
            name: "Total Loss in Base Training pharse"
            axisX: ValueAxis {
                id: axisX
                min: 1
                max: 30  // Giá trị tối đa hiển thị trên trục X
                tickCount: 30
            }
            axisY: ValueAxis {
                id: axisY
                min: 0
                max: 0.15
                tickCount: 11
            }
        }

        Timer {
            interval: 10000 // Mỗi 10ms cập nhật một lần // em chua biet dung nhieu cho toi uu
            running: true
            repeat: true
            onTriggered: {

                for (let i = 0; i <= 32; i++) {
                    // var xValue = series.count; // truc x la thoi gian ( tai thoi diem chay trong for :3)
                    var xValue = i+1;
                    var yValue = LossFromCpp[i];
//                  var yValue = Math.sin(xValue / 10);
                    series.append(xValue, yValue);
                }
                // Cập nhật giá trị tối đa trên trục Y nếu cần
                if (yValue > axisY.max)
                    axisY.max = yValue;
            }
        }
    }
}
