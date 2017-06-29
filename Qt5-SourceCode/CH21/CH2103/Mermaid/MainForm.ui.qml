import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0

Item {
    width: 890
    height: 460

    property alias img: img
    property alias desat: desat
    property alias size: size
    property alias colourful: colourful
    property alias btn: btn
    property alias progreBar: progreBar

    Image {
        id: img
        x: 10; y: 10
        width: 614.4
        height: 384
        source: "images/Mermaid.jpg"
        fillMode: Image.Stretch
        clip: true
    }

    BusyIndicator {
        x: 317.2; y: 202
        running: img.width < 614.4*0.4
    }

    Desaturate {
        id: desat
        anchors.fill: img
        source: img
    }

    RowLayout {
        anchors.left: img.left
        y: 399
        spacing: 5
        Label {
            text: "尺寸"
        }
        Slider {
            id: size
            maximumValue: 1.0
            minimumValue: 0.1
            stepSize: 0.1
            value: 1.0
        }

        Label {
            text: "  彩色"
        }
        Switch {
            id: colourful
            checked: true
        }

        Button {
            id: btn
            text: "灰度值 >>"
        }
        ProgressBar {
            id: progreBar
        }
    }

    ColumnLayout {
        anchors.top: img.top
        x: 629.4
        spacing: 10
        RowLayout {
            spacing: 5
            Label {
                text: "小美人鱼"
                font.pixelSize: 14
                font.bold: true
            }
            SpinBox {
                id: age
                decimals: 0     //精度（小数位）
                value: 16
                minimumValue: 4
                maximumValue: 24
                suffix: "岁"
                font.pixelSize: 14
            }
        }

        Label {
            anchors.horizontalCenter: birthday.horizontalCenter
            text: "生日"
            font.pixelSize: 14
            font.bold: true
            color: "magenta"
        }
        Calendar {            
            id: birthday
            minimumDate: "1991-09-01"
            visibleYear: 2015 - age.value
            visibleMonth: 8
        }
    }
}
