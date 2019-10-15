import QtQuick 2.4
import "style"
import QtQuick.Controls 2.2
import App.AppModules 1.0

Loader
{
    source: "Dashboard.qml"

    DapWMS_Action{
        id:actMessage
        text: "Message"
        module: appModules.storage
        onTriggered: msg.open()
    }

    DapWMS_Message
    {
        id: msg
        text: "Нажата кнопка"
    }

    onLoaded: {
        var newObject = Qt.createQmlObject(
        '   import "style"
            DapWMS_Button {
                id: buttonCancel
                text: qsTr("Cancel")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.right: parent.right
                anchors.rightMargin: 5
            }',
            item,
            "dynamicSnippet1"
        );
        item.buttonOk.anchors.right = newObject.left
        item.buttonOk.action_ = actMessage
        item.caption.text = "Changed Dashboard"
        item.caption.color = "Red"
    }

}
