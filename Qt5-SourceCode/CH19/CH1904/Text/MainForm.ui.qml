import QtQuick 2.3

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Text {
        x:60
        y:100
        color:"green"
        font.family: "Helvetica"
        font.pointSize: 24
        text: "Hello Qt Quick!"
    }

    Text {
        x:60
        y:140
        color:"green"
        font.family: "Helvetica"
        font.pointSize: 24
        text: "<b>Hello</b> <i>Qt Quick!</i>"
    }

    Text {
        x:60
        y:180
        color:"green"
        font.family: "Helvetica"
        font.pointSize: 24
        style: Text.Outline;styleColor:"blue"
        text: "Hello Qt Quick!"
    }

    Text {
        width:200
        color:"green"
        font.family: "Helvetica"
        font.pointSize: 24
        horizontalAlignment:Text.AlignLeft
        verticalAlignment:Text.AlignTop
        elide:Text.ElideRight
        text: "Hello Qt Quick!"
    }

    Text {
        width:200
        y:30
        color:"green"
        font.family: "Helvetica"
        font.pointSize: 24
        horizontalAlignment:Text.AlignLeft
        wrapMode:Text.WrapAnywhere
        text: "Hello Qt Quick!"
    }
}
