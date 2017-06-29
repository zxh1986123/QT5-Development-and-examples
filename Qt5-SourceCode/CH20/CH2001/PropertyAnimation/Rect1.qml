import QtQuick 2.0

Rectangle {
    width: 80
    height: 80
    color: "orange"
    radius: 10
    Text {
        anchors.centerIn: parent
        font.pointSize: 12
        text: "属性值源"
    }

    PropertyAnimation on x {
        from: 50
        to: 500
        duration: 30000
        loops: Animation.Infinite
        easing.type: Easing.OutBounce
    }
}

