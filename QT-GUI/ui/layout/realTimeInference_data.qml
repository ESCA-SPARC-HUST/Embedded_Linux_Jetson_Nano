import QtQuick 2.15
import QtQuick.Controls 2.15
import QtCharts 2.6
import QtMultimedia 5.15


Rectangle {
    id: rectangle
    x: 0
    y: -1
    width: 1024
    height: 500
    color: "#272d37"

//    Item {
//        Text
//        {
//            anchors.top: parent.top
//            color: "white"
//            text: "Audio data received from C++: "
//        }
//    }

//    ChartView {
//        x: 111
//        y: 71
//        title: "Line Chart"
//        width: 800
//        height: 400
//        anchors.centerIn: parent
//        antialiasing: true

//        LineSeries {
//            id: series
//            name: "Real-time Data"
//            axisX: ValueAxis {
//                id: axisX
//                min: 1
//                max: 1028   // Giá trị tối đa hiển thị trên trục X
//                tickCount: 11
//            }
//            axisY: ValueAxis {
//                id: axisY
//                min: -105
//                max: 105
//                tickCount: 11
//            }
//        }

//        Timer {
//            interval: 1 // Mỗi 10ms cập nhật một lần // em chua biet dung nhieu cho toi uu
//            running: true
//            repeat: true
//            onTriggered: {

//                for (let i = 1028; i >= 0; i--) {
//                    var xValue = series.count; // truc x la thoi gian ( tai thoi diem chay trong for :3)
//                    var yValue = audioDataFromCpp[i];
////                  var yValue = Math.sin(xValue / 10);
//                    series.append(xValue, yValue);
//                }
//                // Cập nhật giá trị tối đa trên trục X nếu cần
//                if (xValue > axisX.max)
//                    axisX.max = xValue;
//                axisX.min = xValue - 1028;   //set lai gia tri toi da de chart chay lien tuc
//                // Cập nhật giá trị tối đa trên trục Y nếu cần
//                if (yValue > axisY.max)
//                    axisY.max = yValue;
//            }
//        }
//    }
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
        text: qsTr("Select folder to inference")
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
            text: qsTr("Choose a folder training\n")
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
            text: qsTr("home/nguyen-lam-nghia")
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
        }
    }

    TextInput {
        id: textInput2
        x: 46
        y: 177
        width: 565
        height: 30
        color: "#ffffff"
        text: qsTr("home/nguyen-lam-nghia")
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
            text: qsTr("Excution")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 22
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                    console.log("minhgay is here");
                }
            cursorShape: Qt.WaitCursor
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
        }
    }
}


