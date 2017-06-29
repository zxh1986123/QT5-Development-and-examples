import QtQuick 2.0

Rectangle {
    id: rect3
    width: 80
    height: 80
    color: "aqua"
    radius: 10
    Text {
        anchors.centerIn: parent
        font.pointSize: 12
        text: "独立元素"
    }

    PropertyAnimation {
        id: animation
        target: rect3
        properties: "x,y"
        duration: 1000
        easing.type: Easing.InOutBack
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            animation.from = 20
            animation.to = 200
            animation.running = true
        }
    }
}

