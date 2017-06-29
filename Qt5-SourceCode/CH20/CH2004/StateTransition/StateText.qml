import QtQuick 2.0

Text {
    id: stext
    color: "grey"
    font.family: "Helvetica"
    font.pointSize: 12
    font.bold: true

    MouseArea {
        id: mArea
        anchors.fill: parent
        //onPressed: stext.state = "highlight"
        //onReleased: stext.state = ""
    }

    states: [
        State {
            name: "highlight"
            when: mArea.pressed
            PropertyChanges {
                target: stext
                color: "red"
                font.pointSize: 25
                style: Text.Raised
                styleColor: "red"
            }
        }
    ]

    transitions: [
        Transition {
            PropertyAnimation {
                duration: 1000
            }
        }
    ]
}
