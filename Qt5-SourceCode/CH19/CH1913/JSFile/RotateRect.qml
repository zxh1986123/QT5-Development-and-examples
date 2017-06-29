import QtQuick 2.0
import "myscript.js" as Logic
Rectangle {
    id: rect
    width: 60
    height: 60
    gradient: Gradient {
        GradientStop { position: 0.0; color: "yellow" }
        GradientStop { position: 0.33; color: "blue" }
        GradientStop { position: 1.0; color: "aqua" }
    }

    Behavior on rotation {
        RotationAnimation {
            direction: RotationAnimation.Clockwise
        }
    }

    MouseArea {
        anchors.fill: parent
        // 使用外部 JS 文件中的 JS 函数
        onClicked: rect.rotation = Logic.getRandomNumber();
    }
}

