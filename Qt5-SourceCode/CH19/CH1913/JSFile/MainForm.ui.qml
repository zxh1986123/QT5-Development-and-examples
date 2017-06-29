import QtQuick 2.3

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    RotateRect {								// 直接使用RotateRect组件
        x:50;y:50
    }
}
