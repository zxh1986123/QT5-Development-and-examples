import QtQuick 2.0

Rectangle {
    width: animg.width
    height: animg.height

    transform: Rotation {
        origin.x: animg.width/2
        origin.y: animg.height/2
        axis {
            x: 0
            y: 1
            z: 0
        }
        NumberAnimation on angle {
            from: 0
            to: 360
            duration: 20000
            loops: Animation.Infinite
        }
    }

    AnimatedImage {
        id: animg
        source: "images/bee.gif"
    }
}
