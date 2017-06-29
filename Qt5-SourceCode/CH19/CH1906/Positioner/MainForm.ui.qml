import QtQuick 2.3

Rectangle {
    property alias mouseArea: mouseArea

    //width: 360
    //height: 360
    width: 200;height: 200

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
/*
    Row {
        x:25
        y:25
        spacing: 10
        layoutDirection:Qt.RightToLeft
        RedRectangle { }
        GreenRectangle { }
        BlueRectangle { }
    }

    Column {
        x:25
        y:120
        spacing: 2
        RedRectangle { }
        GreenRectangle { }
        BlueRectangle { }
    }

    Grid {
        x:140
        y:120
        columns: 3
        spacing: 5
        BlueRectangle { }
        BlueRectangle { }
        BlueRectangle { }
        BlueRectangle { }
        BlueRectangle { }
    }
*/
    Flow {
        anchors.fill: parent
        anchors.margins: 15
        spacing: 5
        RedRectangle { }
        BlueRectangle { }
        GreenRectangle { }
    }
}
