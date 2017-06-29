import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.3

Item {
    id: window
    width: 600
    height: 240

    property int columnWidth: window.width/5

    GridLayout {
        rowSpacing: 12
        columnSpacing: 30
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: 30

        Button {
            text: "标准按钮"
            implicitWidth: columnWidth
        }
        Button {
            text: "样式属性"
            style: ButtonStyle {
                background: BorderImage {
                    source: control.pressed ? "images/button-pressed.png" : "images/button.png"
                    border.left: 4 ; border.right: 4 ; border.top: 4 ; border.bottom: 4
                }
            }
            implicitWidth: columnWidth
        }
        Button {
            text: "样式代理"
            style: buttonStyle
            implicitWidth: columnWidth
        }

        TextField {
            Layout.row: 1
            implicitWidth: columnWidth
        }
        TextField {
            style: TextFieldStyle {
                background: BorderImage {
                    source: "images/textfield.png"
                    border.left: 4 ; border.right: 4 ; border.top: 4 ; border.bottom: 4
                }
            }
            implicitWidth: columnWidth
        }
        TextField {
            style: textFieldStyle
            implicitWidth: columnWidth
        }

        Slider {
            id: slider1
            Layout.row: 2
            value: 0.5
            implicitWidth: columnWidth
        }
        Slider {
            id: slider2
            value: 0.5
            implicitWidth: columnWidth
            style: SliderStyle {
                groove: BorderImage {
                    height: 6
                    border.top: 1
                    border.bottom: 1
                    source: "images/progress-background.png"
                    border.left: 6
                    border.right: 6
                    BorderImage {
                        anchors.verticalCenter: parent.verticalCenter
                        source: "images/progress-fill.png"
                        border.left: 5 ; border.top: 1
                        border.right: 5 ; border.bottom: 1
                        width: styleData.handlePosition
                        height: parent.height
                    }
                }
                handle: Item {
                    width: 13
                    height: 13
                    Image {
                        anchors.centerIn: parent
                        source: "images/slider-handle.png"
                    }
                }
            }
        }
        Slider {
            id: slider3
            value: 0.5
            implicitWidth: columnWidth
            style: sliderStyle
        }

        ProgressBar {
            Layout.row: 3
            value: slider1.value
            implicitWidth: columnWidth
        }
        ProgressBar {
            value: slider2.value
            implicitWidth: columnWidth
            style: progressBarStyle
        }
        ProgressBar {
            value: slider3.value
            implicitWidth: columnWidth
            style: progressBarStyle2
        }
    }

    // 样式代理

    property Component buttonStyle: ButtonStyle {
        background: Rectangle {
            implicitHeight: 22
            implicitWidth: columnWidth
            color: control.pressed ? "darkGray" : control.activeFocus ? "#cdd" : "#ccc"
            antialiasing: true
            border.color: "gray"
            radius: height/2
            Rectangle {
                anchors.fill: parent
                anchors.margins: 1
                color: "transparent"
                antialiasing: true
                visible: !control.pressed
                border.color: "#aaffffff"
                radius: height/2
            }
        }
    }

    property Component textFieldStyle: TextFieldStyle {
        background: Rectangle {
            implicitWidth: columnWidth
            color: "#f0f0f0"
            antialiasing: true
            border.color: "gray"
            radius: height/2
            Rectangle {
                anchors.fill: parent
                anchors.margins: 1
                color: "transparent"
                antialiasing: true
                border.color: "#aaffffff"
                radius: height/2
            }
        }
    }

    property Component sliderStyle: SliderStyle {
        handle: Rectangle {
            width: 18
            height: 18
            color: control.pressed ? "darkGray" : "lightGray"
            border.color: "gray"
            antialiasing: true
            radius: height/2
            Rectangle {
                anchors.fill: parent
                anchors.margins: 1
                color: "transparent"
                antialiasing: true
                border.color: "#eee"
                radius: height/2
            }
        }

        groove: Rectangle {
            height: 8
            implicitWidth: columnWidth
            implicitHeight: 22

            antialiasing: true
            color: "#ccc"
            border.color: "#777"
            radius: height/2
            Rectangle {
                anchors.fill: parent
                anchors.margins: 1
                color: "transparent"
                antialiasing: true
                border.color: "#66ffffff"
                radius: height/2
            }
        }
    }

    property Component progressBarStyle: ProgressBarStyle {
        background: BorderImage {
            source: "images/progress-background.png"
            border.left: 2 ; border.right: 2 ; border.top: 2 ; border.bottom: 2
        }
        progress: Item {
            clip: true
            BorderImage {
                anchors.fill: parent
                anchors.rightMargin: (control.value < control.maximumValue) ? -4 : 0
                source: "images/progress-fill.png"
                border.left: 10 ; border.right: 10
                Rectangle {
                    width: 1
                    color: "#a70"
                    opacity: 0.8
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 1
                    anchors.right: parent.right
                    visible: control.value < control.maximumValue
                    anchors.rightMargin: -parent.anchors.rightMargin
                }
            }
        }
    }

    property Component progressBarStyle2: ProgressBarStyle {
        background: Rectangle {
            implicitWidth: columnWidth
            implicitHeight: 24
            color: "#f0f0f0"
            border.color: "gray"
        }
        progress: Rectangle {
            color: "#ccc"
            border.color: "gray"
            Rectangle {
                color: "transparent"
                border.color: "#44ffffff"
                anchors.fill: parent
                anchors.margins: 1
            }
        }
    }
}
