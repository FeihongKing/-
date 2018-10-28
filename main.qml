import QtQuick 2.9
import QtQuick.Controls 2.2
import io.mbsr.infsearch 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("贵州大学图书馆助手")

    InfSearch{
        id: infsearch
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
            indexInput.onTextChanged: {
                infsearch.index = indexInput.text
}
            indexInput.onAccepted: {
                infShow.text = infsearch.inf
            }
        }

        Page2Form {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        font.pixelSize: 14

        TabButton {
            text: qsTr("书架查询")
        }
        TabButton {
            text: qsTr("关于")
        }
    }
}
