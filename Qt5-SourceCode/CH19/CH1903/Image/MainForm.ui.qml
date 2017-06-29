import QtQuick 2.3

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Image {
        x: 80
        y: 20
        width: 980/4;height: 751/4
        source: "images/栖霞山枫叶.jpg"
        fillMode: Image.PreserveAspectCrop
        clip: true
    }
}
