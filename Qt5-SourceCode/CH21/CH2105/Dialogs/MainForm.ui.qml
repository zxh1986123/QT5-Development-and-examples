import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 320
    height: 280

    property alias date: date
    property alias btnSelect: btnSelect
    property alias file: file
    property alias btnOpen: btnOpen
    property alias content: content
    property alias btnFont: btnFont
    property alias btnColor: btnColor

    ColumnLayout {
        anchors.centerIn: parent
        RowLayout {
            Label {
                text: "日期："
            }
            TextField {
                id: date
            }
            Button {
                id: btnSelect
                text: qsTr("选择...")
            }
        }
        RowLayout {
            Label {
                text: "文件："
            }
            TextField {
                id: file
            }
            Button {
                id: btnOpen
                text: qsTr("打开...")
            }
        }
        TextArea {
            id: content
            Layout.fillWidth: true          // 将文本区拉伸至与上两栏等宽
            text: "我喜欢Qt Quick编程。"
            font.pixelSize: 14
        }
        RowLayout {
            Layout.alignment: Qt.AlignRight
            Button {
                id: btnFont
                text: qsTr("字体...")
            }
            Button {
                id: btnColor
                text: qsTr("颜色...")
            }
        }
    }
}
