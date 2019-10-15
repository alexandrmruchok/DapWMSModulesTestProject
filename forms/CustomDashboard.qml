import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Window 2.2

import "style"

Text {
    id: element
    x: 23
    y: 23
    width: 150
    height: 15
    color: "green"
    text: qsTr("Custom Dashboard")
    font.bold: true
    font.family: "Courier"
    font.pixelSize: 15
}

