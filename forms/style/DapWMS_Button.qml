import QtQuick 2.0
import QtQuick.Controls 2.2

Button
{

    property DapWMS_Action action: DapWMS_Action{ module: appModules.none }

    id:button
    onClicked: action.trigger(button)

    text: action.text

    background: Rectangle
    {
        implicitWidth: 100
        implicitHeight: 40
        border.color: action.module.colorScheme.base
        border.width:1;
        radius:3;
        color: button.hovered ? action.module.colorScheme.background_hover : action.module.colorScheme.background
    }
}

