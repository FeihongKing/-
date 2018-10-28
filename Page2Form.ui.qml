import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 400
    height: 600
    Image {
        id: backimage
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.fill: parent
        source: "qrc:/backimage.jpeg"
    }

    Label {
        id: label1
        text: qsTr("名称：贵州大学图书馆助手\n版本：1.0\n作者：墨悲丝染")
        anchors.top: iconimg.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.topMargin: 0
        verticalAlignment: Text.AlignTop
        horizontalAlignment: Text.AlignHCenter
    }

    Image {
        id: iconimg
        x: 125
        y: 62
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        clip: true
        fillMode: Image.Stretch
        source: "qrc:/icon.png"
    }
}
