import QtQuick 2.4

import "style"

DashboardForm {

    DapWMS_Action{
        id:ok
        onTriggered: caption.text = "NewForm"
        text: "Ok"
    }

    buttonOk.action_: ok
}
