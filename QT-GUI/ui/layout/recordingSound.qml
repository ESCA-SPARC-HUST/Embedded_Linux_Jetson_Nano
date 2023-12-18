import QtQuick 2.15
import "qrc:/ui/component/QtQuick/Studio/Components"
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.0
import QtCharts 2.6
import QtMultimedia 5.15

Rectangle {
    id: frame_1
    width: 1024
    height: 500
    color: "transparent"

    property bool flag: false

    Rectangle {
        id: rectangle_55
        x: 0
        y: 0
        width: 1024
        height: 500
        color: "#262e4b"
    }

    Text {
        id: select_folder_to_store
        x: 23
        y: 120
        width: 312
        height: 24
        color: "#ffffff"
        text: qsTr("Select folder to store")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Itim"
    }

    Text {
        id: choose_file_text
        width: 552
        height: 133
        color: "#ffffff"
        text: "home/nguyen-hai-minh/wavFile"
        font.pixelSize: 23
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.NoWrap
        font.weight: Font.Light
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -213
        anchors.verticalCenterOffset: -30
        font.family: "Josefin Sans"
    }

    SvgPathItem {
        id: line_21_Stroke_
        x: 23
        y: 96
        width: 975
        height: 1
        strokeColor: "transparent"
        strokeStyle: 1
        joinStyle: 0
        antialiasing: true
        strokeWidth: 1
        fillColor: "#ffffff"
        path: "M 975 1 L 0 1 L 0 0 L 975 0 L 975 1 Z"
    }

    Rectangle {
        id: rectangle_74
        x: 423
        y: 20
        width: 179
        height: 67
        color: "#69000822"
        radius: 8

        Text {
            id: text1
            x: 14
            y: 17
            width: 151
            height: 29
            color: "#ffffff"
            text: qsTr("Recording Sound")
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.weight: Font.Normal
            font.family: "Itim"
        }
    }

    Rectangle {
        id: rectangle_64
        x: 285
        y: 292
        width: 130
        height: 53
        color: "#6935416c"
        radius: 8

        Text {
            id: textEdit
            anchors.centerIn: parent
            width: 140
            height: 40
            color: "#ffffff"
            text: "10 s"
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenterOffset: 1
            anchors.horizontalCenterOffset: -1
            font.pointSize: 24

            onTextChanged: {

                // Add handle
            }
        }
    }

    Text {
        id: set_time_to_start_record
        x: 25
        y: 306
        width: 254
        height: 24
        color: "#ffffff"
        text: qsTr("Time to start record")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Itim"
    }

    ChartView {
        id: lineChart
        x: 111
        y: 71
        title: "Line Chart"
        width: 565
        height: 393
        anchors.verticalCenterOffset: 50
        anchors.horizontalCenterOffset: 210
        anchors.centerIn: parent
        antialiasing: true

        LineSeries {
            id: series
            name: "Real-time Data"
            axisX: ValueAxis {
                id: axisX
                min: 1
                max: 1028 // Giá trị tối đa hiển thị trên trục X
                tickCount: 11
            }
            axisY: ValueAxis {
                id: axisY
                min: -105
                max: 105
                tickCount: 11
            }
        }

        Timer {
            interval: 1 // Mỗi 10ms cập nhật một lần // em chua biet dung nhieu cho toi uu
            running: flag
            repeat: true
            onTriggered: {

                for (var i = 1028; i >= 0; i--) {
                    var xValue = series.count
                    // truc x la thoi gian ( tai thoi diem chay trong for :3)
                    var yValue = audioDataFromCpp[i]
                    //                  var yValue = Math.sin(xValue / 10);
                    if (yValue >= 95 || yValue <= -95) {
                        console.log("yValue: " + yValue)
                    }

                    series.append(xValue, yValue)
                }
                // Cập nhật giá trị tối đa trên trục X nếu cần
                if (xValue > axisX.max)
                    axisX.max = xValue
                axisX.min = xValue - 1028 //set lai gia tri toi da de chart chay lien tuc
                // Cập nhật giá trị tối đa trên trục Y nếu cần
                if (yValue > axisY.max)
                    axisY.max = yValue
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 73
        y: 384
        width: 288
        height: 77
        color: "#f30b0836"
        radius: 22

        Text {
            id: start_stop_Btn
            x: 8
            y: 1
            width: 280
            height: 68
            color: "#ffffff"
            text: flag ? "Stop" : "Start"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 22
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                flag = !flag;
            }
        }
    }

    //    Rectangle {
    //        id: rectangle17
    //        x: 703
    //        y: 292
    //        width: 288
    //        height: 77
    //        color: "#f30b0836"
    //        radius: 22

    //        Text {
    //            id: view_Btn
    //            x: 8
    //            y: 1
    //            width: 280
    //            height: 68
    //            color: "#ffffff"
    //            text: qsTr("View data")
    //            horizontalAlignment: Text.AlignHCenter
    //            verticalAlignment: Text.AlignVCenter
    //            font.pointSize: 22
    //        }

    //        MouseArea {
    //            id: mouseArea17
    //            anchors.fill: parent
    //        }
    //    }
}
