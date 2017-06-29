import QtQuick 2.4

Rectangle {
    id: rect
    width: 240
    height: 300
    color: "grey"

    SequentialAnimation on x {
        id: rectAnim
        running: false
        loops: Animation.Infinite
        NumberAnimation { from: 0; to: 500; duration: 8000; easing.type: Easing.InOutQuad }
        NumberAnimation { from: 500; to: 0; duration: 8000; easing.type: Easing.InOutQuad }
        PauseAnimation { duration: 1000 }
    }

    Image {
        id: img
        source: "images/zhou.jpg"
        anchors.horizontalCenter: parent.horizontalCenter
        y: 0
        scale: 0.1
        opacity: 0
        rotation: 45
    }

    SequentialAnimation {
        id: imgAnim
        loops: Animation.Infinite
        ParallelAnimation {
            ScaleAnimator { target: img; to: 1; duration: 1500 }
            OpacityAnimator { target: img; to: 1; duration: 2000 }
            RotationAnimator { target: img; to: 360; duration: 1500 }
            NumberAnimation {
                target: img
                property: "y"
                to: rect.height - img.height
                easing.type: Easing.OutBounce
                duration: 5000
            }
        }
        PauseAnimation { duration: 2000 }
        ParallelAnimation {
            NumberAnimation {
                target: img
                property: "y"
                to: 0
                easing.type: Easing.OutQuad
                duration: 1000
            }
            OpacityAnimator { target: img; to: 0; duration: 1000 }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            rectAnim.running = true
            imgAnim.running = true
        }
    }
}
