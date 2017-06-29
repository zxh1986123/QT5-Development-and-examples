import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 780
    height: 320

    property alias tableView: tableView
    property alias tabView: tabView
    property alias scrolimg: scrolimg

    RowLayout {
        anchors.centerIn: parent
        SplitView {
            anchors.fill: parent
            orientation: Qt.Horizontal

            TableView {
                id: tableView
                width: 300
                TableViewColumn {
                    role: "title"
                    title: "名称"
                    horizontalAlignment: Text.AlignHCenter
                    width: 100
                }
                TableViewColumn {
                    role: "author"
                    title: "作者"
                    horizontalAlignment: Text.AlignHCenter
                    width: 200
                }
                model: libraryModel
            }

            TabView {
                id: tabView
                width: 215; height: 300
                Tab {
                    title: "蒙娜丽莎"
                    Image {
                        source: "images/蒙娜丽莎.jpg"
                    }
                }
                Tab {
                    title: "大卫"
                    Image {
                        source: "images/大卫.jpg"
                    }
                }
                Tab {
                    title: "圣母"
                    Image {
                        source: "images/圣母.jpg"
                    }
                }
            }

            ScrollView {
                Image {
                    id: scrolimg
                    source: "images/蒙娜丽莎.jpg"
                }
            }
        }
    }

    ListModel {
        id: libraryModel
        ListElement {
            title: "蒙娜丽莎"
            author: "列奥纳多·达·芬奇"
        }
        ListElement {
            title: "大卫"
            author: "波纳罗蒂·米开朗琪罗"
        }
        ListElement {
            title: "西斯廷圣母"
            author: "拉斐尔·圣齐奥"
        }
    }
}
