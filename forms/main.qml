import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "style"

ApplicationWindow {
    id: appWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ComboBox {
        id: comboBox
        width: 200
        model: [ "Dashboard", "CustomDashboard", "ChangedDashboard" ]
        onActivated: dashboardLoader.source =comboBox.currentText + ".qml"
    }
    Rectangle {
        anchors.left: parent.left
        anchors.right:  parent.right
        anchors.top: comboBox.bottom
        anchors.bottom: parent.bottom
        border.color: "grey";
        Loader {
            anchors.fill: parent
            id: dashboardLoader
            source: "Dashboard.qml"
        }
    }

}
