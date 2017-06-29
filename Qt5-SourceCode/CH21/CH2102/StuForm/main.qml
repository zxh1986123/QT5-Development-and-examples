import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("学生信息表单")
    width: 640
    height: 480
    visible: true

    MainForm {
        anchors.fill: parent
        submit.onClicked: {
            var hobbyText = "";
            for(var i = 0; i < 7; i++) {
                hobbyText += hobby.children[i].checked ? (hobby.children[i].text + "、") : "";
            }
            if(hobby.children[7].checked) {
                hobbyText += "...";
            }
            details.text = "我的名字叫" + name.text + "，是个" + age.text + "岁" +
                    sex.current.text + "生，所学专业是" + spec.currentText +
                    "，业余喜欢" + hobbyText;
        }
    }
}
