import QtQuick 2.4

Rectangle {
    width: 100
    height: 100
    color: "green"

    XAnimator on x {
        from: 10;
        to: 100;
        duration: 7000
        loops: Animator.Infinite
    }

    YAnimator on y {
        from: 10;
        to: 100;
        duration: 7000
        loops: Animator.Infinite
    }

    ScaleAnimator on scale {
        from: 0.1;
        to: 1;
        duration: 7000
        loops: Animator.Infinite
    }

    RotationAnimator on rotation {
        from: 0;
        to: 360;
        duration:7000
        loops: Animator.Infinite
    }

    OpacityAnimator on opacity {
        from: 0;
        to: 1;
        duration: 7000
        loops: Animator.Infinite
    }
}
