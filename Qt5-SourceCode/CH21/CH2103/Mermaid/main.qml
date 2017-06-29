import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Mermaid")
    width: 890
    height: 460
    visible: true

    MainForm {
        anchors.fill: parent
        size.onValueChanged: {
            var scale = size.value;
            img.width = 614.4*scale;
            img.height = 384*scale;
        }
        colourful.onCheckedChanged: {
            desat.desaturation = colourful.checked ? 0.0 : 1.0
        }
        btn.onClicked: {
            if(desat.desaturation < 0.9) {
                desat.desaturation += 0.1;
            }else {
                desat.desaturation = 0.0;
            }
            progreBar.value = desat.desaturation;
        }
    }
}
