import QtQuick 2.3

Rectangle {
    property alias mouseArea: mouseArea
    property alias topRect: topRect

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Rectangle {
        rotation: 45 // 旋转45度
        x: 40
        y: 60
        width: 100
        height: 100
        color: "red"
    }
    Rectangle {
        id: topRect
        opacity: 0.6    // 设置透明度
        scale: 0.8 // 缩小为原尺寸的 80%
        x: 135
        y: 60
        width: 100
        height: 100
        radius: 8 // 设为圆角矩形
        gradient: Gradient { // 以垂直渐变色填充
            GradientStop { position: 0.0; color: "aqua" }
            GradientStop { position: 1.0; color: "teal" }
        }
        border { width: 3; color: "blue" } // 为矩形添加一个 3 像素宽的蓝色边框
    }
}
