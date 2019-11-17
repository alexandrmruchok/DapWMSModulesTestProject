import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Window 2.2

import "../style"

DashboardForm {
    id: root

    DapWMS_Action{
        id:close
        onTriggered: mainController.close()
        text: "Close"
    }
    buttonOk.action_: close
}

