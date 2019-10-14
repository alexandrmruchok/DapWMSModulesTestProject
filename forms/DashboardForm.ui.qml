import QtQuick 2.4
import QtQuick.Controls 2.2
import "style"

Item {
    id: rootItem
    width: 400
    height: 400
    property alias caption: caption
    property alias buttonOk: buttonOk

    Text {
        id: caption
        x: 23
        y: 23
        width: 150
        height: 15
        color: "#848484"
        text: qsTr("Dashboard")
        font.bold: true
        font.family: "Courier"
        font.pixelSize: 15
    }

    DapWMS_Button {
        id: buttonOk
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 5
    }
}
