import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("对话框示例")
    width: 320
    height: 280
    visible: true

    MainForm {
        id: main
        anchors.fill: parent
        btnSelect.onClicked: dateDialog.open()
        btnOpen.onClicked: fileDialog.open()
        btnFont.onClicked: fontDialog.open()
        btnColor.onClicked: colorDialog.open()
    }

    Dialog {
        id: dateDialog
        title: "选择日期"
        width: 275
        height: 300
        standardButtons: StandardButton.Save | StandardButton.Cancel

        onAccepted: main.date.text = calendar.selectedDate.toLocaleDateString()

        Calendar {
            id: calendar
            onDoubleClicked: dateDialog.click(StandardButton.Save)
        }
    }

    FileDialog {
        id: fileDialog
        title: "打开"
        nameFilters: [ "Text files (*.txt)", "Image files (*.jpg *.png)", "All files (*)" ]

        onAccepted: main.file.text = fileDialog.fileUrl
    }

    FontDialog {
        id: fontDialog
        title: "字体"
        font: Qt.font({ family: "宋体", pointSize: 12, weight: Font.Normal })
        modality: Qt.WindowModal

        onAccepted: main.content.font = fontDialog.font
    }

    ColorDialog {
        id: colorDialog
        title: "颜色"
        modality: Qt.WindowModal

        onAccepted: main.content.textColor = colorDialog.color
    }
}
