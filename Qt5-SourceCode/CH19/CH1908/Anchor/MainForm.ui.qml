import QtQuick 2.3

Rectangle {
    property alias mouseArea: mouseArea
    property alias chgRect1: changingRect1
    property alias chgRect2: changingRect2
    property alias rRect: redRect

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    BlueRectangle {
        id:blueRect
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 25
        anchors.topMargin: 25
    }
    GreenRectangle {
        id:greenRect
        anchors.left: blueRect.right
        anchors.top: blueRect.top
        anchors.leftMargin: 40
    }
    RedRectangle {
        id:redRect
        anchors.left: greenRect.right
        anchors.top: greenRect.top
        anchors.leftMargin: 40
    }

    RedRectangle {
        id:changingRect1
        anchors.left: parent.left
        anchors.top: blueRect.bottom
        anchors.leftMargin: 25
        anchors.topMargin: 25
    }

    RedRectangle {
        id:changingRect2
        anchors.left: parent.left
        anchors.top: changingRect1.bottom
        anchors.leftMargin: 25
        anchors.topMargin: 20
    }

    Button {
        width:95;height:35
        anchors.right: redRect.right
        anchors.top: changingRect2.bottom
        anchors.topMargin: 10
    }
}
