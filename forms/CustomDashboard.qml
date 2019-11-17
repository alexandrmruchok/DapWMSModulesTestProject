import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Window 2.2
import "form"
import "style"

Dashboard
{
    id:newwindow
    caption.text: "CustomDashboard"

    DapWMS_Action{
        id:printik
        onTriggered: caption.text = "Print()"
        text: "Print"
    }

    buttonOk.action_: printik
    buttonOk.anchors.left: newwindow.left
    caption.color: "Red"
}

