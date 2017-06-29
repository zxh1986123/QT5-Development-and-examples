import QtQuick 2.0

Rectangle {
    id:btn
    width: 100;height: 62
    color: "teal"
    border.color: "aqua"
    border.width: 3

    Text {
        id: label
        anchors.centerIn: parent
        font.pointSize: 16
        text: "开始"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            label.text = "按钮已按下！"
            label.font.pointSize = 11
            btn.color = "aqua"
            btn.border.color = "teal"

            chgRect1.anchors.left = undefined
            chgRect1.anchors.right = rRect.right

            chgRect2.anchors.right = rRect.right
            chgRect2.anchors.left = undefined
        }
    }
}
