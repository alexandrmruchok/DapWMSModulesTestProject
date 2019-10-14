import QtQuick.Controls 2.2
import QtQuick 2.7

Popup {
    id: message
    x: 100
    y: 100
    width: 300
    height: 100
    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
    property alias text: txt.text
    Text {
        id: txt
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
