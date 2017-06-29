import QtQuick 2.3

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 360
    color: "lightgray"

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    TextBox {
        id: tBx1
        x:25; y:25
        focus: true
        label: "学号"
        text: focus ? "" : "请输入内容..."
        KeyNavigation.tab: tBx2
    }

    TextBox {
        id: tBx2
        x:25; y:60
        label: "姓名"
        text: focus ? "" : "请输入内容..."
        KeyNavigation.tab: tBx1
    }
}
