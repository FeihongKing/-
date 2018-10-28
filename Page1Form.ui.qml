import QtQuick 2.9
import QtQuick.Controls 2.2
import io.mbsr.infsearch 1.0

Page {
    id: page
    width: 400
    height: 600
    Image {
        id: backimage
        anchors.fill: parent
        source: "qrc:/backimage.jpeg"
    }
    property alias infShow: infShow
    property alias indexInput: indexInput

    Label {
        id: indexLable
        text: qsTr("索书号")
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        font.pixelSize: 14
        clip: true
        anchors.right: indexInput.left
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 18
        anchors.bottom: infShow.top
        anchors.bottomMargin: 12
        anchors.left: parent.left
        anchors.leftMargin: 21
    }

    TextField {
        id: indexInput
        placeholderText: qsTr("输入索书号")
        padding: 0
        bottomPadding: 0
        topPadding: 0
        leftPadding: 4
        rightPadding: 2
        font.weight: Font.Normal
        clip: true
        anchors.top: parent.top
        anchors.topMargin: 18
        anchors.right: parent.right
        anchors.rightMargin: 25
        anchors.bottom: infShow.top
        anchors.bottomMargin: 12
        anchors.left: parent.left
        anchors.leftMargin: 70
        font.pixelSize: 12
    }

    Text {
        id: infShow
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 14
        anchors.left: parent.left
        anchors.leftMargin: 21
        anchors.top: parent.top
        anchors.topMargin: 62
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        style: Text.Normal
        clip: true
        font.pixelSize: 12
    }
}
