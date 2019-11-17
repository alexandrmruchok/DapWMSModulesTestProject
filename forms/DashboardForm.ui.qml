import QtQuick 2.4
import QtQuick.Controls 2.2
import "style"
import "form"

DashboardForm {
    id: rootItem
    width: 400
    height: 400

    buttonOk.anchors.centerIn: rootItem

    DapWMS_Button {
        id: buttonCancel
        text: "Cancel"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 5
    }

}
