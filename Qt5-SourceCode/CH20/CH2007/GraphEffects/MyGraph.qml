import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    width: animg.width
    height: animg.height

    AnimatedImage {
        id: animg
        source: "images/insect.gif"
    }

    BrightnessContrast {
        id: bright
        anchors.fill: animg
        source: animg
    }

    SequentialAnimation {
        id: imgAnim
        NumberAnimation {
            target: bright
            property: "brightness"
            to: -0.5
            duration: 3000
        }
        NumberAnimation {
            target: bright
            property: "contrast"
            to: 0.25
            duration: 2000
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            imgAnim.running = true
        }
    }
}
