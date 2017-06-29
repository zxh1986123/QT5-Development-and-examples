import QtQuick 2.3

Rectangle {
    property alias mouseArea: mouseArea
    property alias rect4: rect4

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Column {
        x:50; y:30
        spacing: 5
        Rect1 { }
        Rect2 { }
        Rect3 { }
        Rect4 {id: rect4 }
    }
}
