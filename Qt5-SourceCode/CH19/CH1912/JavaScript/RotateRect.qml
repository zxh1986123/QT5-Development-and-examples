import QtQuick 2.0

Rectangle {
    id: rect
    width: 60
    height: 60
    gradient: Gradient {
        GradientStop { position: 0.0; color: "yellow" }
        GradientStop { position: 0.33; color: "blue" }
        GradientStop { position: 1.0; color: "aqua" }
    }

    function getRandomNumber() {
        return Math.random() * 360;
    }

    Behavior on rotation {
        RotationAnimation {
            direction: RotationAnimation.Clockwise
        }
    }

    MouseArea {
        anchors.fill: parent
        // 调用 JS 函数
        onClicked: rect.rotation = getRandomNumber();
    }
}

