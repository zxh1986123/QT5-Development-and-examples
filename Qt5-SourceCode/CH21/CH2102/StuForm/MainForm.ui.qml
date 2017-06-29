import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 640
    height: 480

    property alias name: name
    property alias age: age
    property alias sex: sexGroup
    property alias spec: speCBox
    property alias hobby: hobbyGrid
    property alias submit: submit
    property alias details: stuInfo

    RowLayout {
        x: 50; y: 35
        spacing: 10
        ColumnLayout {
            spacing: 8
            RowLayout {
                spacing: 0
                Label {
                    text: "姓名 "
                }
                TextField {
                    id: name
                    placeholderText: qsTr("请输入...")
                    focus: true
                }
            }
            RowLayout {
                spacing: 0
                Label {
                    text: "年龄 "
                }
                TextField {
                    id: age
                    validator: IntValidator {bottom: 16; top: 26;}
                }
            }
            GroupBox {
                id: group1
                title: qsTr("性别")
                Layout.fillWidth: true
                RowLayout {
                    ExclusiveGroup { id: sexGroup }
                    RadioButton {
                        text: qsTr("男")
                        checked: true
                        exclusiveGroup: sexGroup
                        Layout.minimumWidth: 65
                    }
                    RadioButton {
                        text: qsTr("女")
                        exclusiveGroup: sexGroup
                        Layout.minimumWidth: 65
                    }
                }
            }
            RowLayout {
                spacing: 0
                Label {
                    text: "专业 "
                }
                ComboBox {
                    id: speCBox
                    Layout.fillWidth: true
                    currentIndex: 0
                    model: ListModel {
                        ListElement { text: "计算机" }
                        ListElement { text: "通信工程" }
                        ListElement { text: "信息网络" }
                    }
                    width: 200
                }
            }
            GroupBox {
                id: group2
                title: qsTr("爱好")
                Layout.fillWidth: true
                GridLayout {
                    id: hobbyGrid
                    columns: 3
                    CheckBox {
                        text: qsTr("旅游")
                        checked: true
                    }
                    CheckBox {
                        text: qsTr("游泳")
                        checked: true
                    }
                    CheckBox {
                        text: qsTr("篮球")
                    }
                    CheckBox {
                        text: qsTr("唱歌")
                    }
                    CheckBox {
                        text: qsTr("舞蹈")
                    }
                    CheckBox {
                        text: qsTr("网购")
                    }
                    CheckBox {
                        text: qsTr("看电视")
                        checked: true
                    }
                    CheckBox {
                        text: qsTr("其他")
                        checked: true
                    }
                }
            }
            Button {
                id: submit
                anchors.right: group2.right
                text: "提交"
            }
        }
        ColumnLayout {
            Layout.alignment: Qt.AlignTop
            Label {
                text: "基本信息"
                font.pixelSize: 15
                font.bold: true
            }
            TextArea {
                id: stuInfo
                Layout.fillHeight: true
                width: 240
                text: "学生个人资料..."
                font.pixelSize: 14
            }
        }
    }
}
