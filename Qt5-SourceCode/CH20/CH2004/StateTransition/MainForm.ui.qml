import QtQuick 2.3

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Row {
        anchors.centerIn: parent
        spacing: 10
        StateText { text: "I" }
        StateText { text: "love" }
        StateText { text: "QML"  }
    }
}
