import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("世界艺术珍品")
    width: 780
    height: 320
    visible: true

    MainForm {
        anchors.fill: parent
        tableView.onClicked: {
            tabView.currentIndex = tableView.currentRow;
            scrolimg.source = "images/" + tabView.getTab(tabView.currentIndex).title + ".jpg";
        }
        tabView.onCurrentIndexChanged: {
            tableView.selection.clear();
            tableView.selection.select(tabView.currentIndex);
            scrolimg.source = "images/" + tabView.getTab(tabView.currentIndex).title + ".jpg";
        }
    }
}
