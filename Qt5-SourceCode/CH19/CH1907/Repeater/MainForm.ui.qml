import QtQuick 2.3

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Grid {
        x:25;y:25
        spacing: 4
        Repeater {
            model: 16
            Rectangle {
                width: 48; height: 48
                color:"aqua"
                Text {
                    anchors.centerIn: parent
                    color: "black"
                    font.pointSize: 20
                    text: index
                }
            }
        }
    }
}
