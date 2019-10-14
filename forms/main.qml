import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

import "plugIn.js" as PlugIn

ApplicationWindow {
    id: aaa
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    ToolBar{
        RowLayout{
            anchors.fill: parent

            ToolButton{
                text: "sfgasga"
            }
        }
    }

    Rectangle{
        anchors.fill: parent
        DapWMS_Button {
            onClicked:

                PlugIn.init()
            width: 200
            height: 50
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }

    }


//    Rectangle {
//        anchors.fill: parent
//        color: "#555555"
//    }

}
