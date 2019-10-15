import QtQuick 2.0
import QtQuick.Controls 2.2

Button
{

    property DapWMS_Action action_: DapWMS_Action{ module: appModules.none }

    id:button
    onClicked: action_.trigger(button)

    text: action_.text

    background: Rectangle
    {
        implicitWidth: 100
        implicitHeight: 40
        border.color: action_.module.colorScheme.base
        border.width:1;
        radius:3;
        color: button.hovered ? action_.module.colorScheme.background_hover : action_.module.colorScheme.background
    }
}

