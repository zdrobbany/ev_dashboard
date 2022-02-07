import QtQuick 2.0

Item {
id: indicatorGroup
property var config
property color off: "#1f2626"
property color warn_red: "#dd054d"
property color warn_yellow: "#e0d503"
width: 200
height: 209

    IconIndicator {
        id: safetyBelt
        width: height
        activeColor1: warn_red
        condition: indicatorGroup.config.safety_belt ? 1 : 0
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        imageSource: "Image/icon/seat belt icon-01.svg"
        anchors.leftMargin: parent.width*.175
        anchors.bottomMargin: parent.height*.6
        anchors.topMargin: parent.height*.22
    }

    IconIndicator {
        id: brakeWarn
        width: height
        activeColor1: warn_red
        condition: config.brake_indicator ? 1 : 0
        anchors.left: safetyBelt.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        imageSource: "Image/icon/parking warning icon-01.svg"
        anchors.rightMargin: parent.width*.32
        anchors.leftMargin: parent.width*.14
        anchors.bottomMargin: parent.height*.66
        anchors.topMargin: parent.height*.165
    }

    IconIndicator {
        id: parkWarn
        width: height
        activeColor1: warn_red
        condition: config.park_indicator ? 1 : 0
        anchors.right: parent.right
        anchors.top: brakeWarn.bottom
        anchors.bottom: parent.bottom
        imageSource: "Image/icon/parking brake icon-01.svg"
        anchors.bottomMargin: parent.height*.45
        anchors.rightMargin: parent.width*.175
        anchors.topMargin: parent.height*.03
    }

    IconIndicator {
        id: enggineWarn
        width: height
        activeColor1: warn_yellow
        condition: config.enggine_check ? 1 : 0
        anchors.right: parent.right
        anchors.top: parkWarn.bottom
        anchors.bottom: parent.bottom
        imageSource: "Image/icon/engine error icon-01.svg"
        anchors.rightMargin: parent.width*.29
        anchors.bottomMargin: parent.height*.25
        anchors.topMargin: parent.height*.03
    }

    IconIndicator {
        id: door
        width: height
        activeColor1: warn_red
        condition: config.door_indicator ? 1 : 0
        anchors.left: parent.left
        anchors.top: safetyBelt.bottom
        anchors.bottom: parent.bottom
        imageSource: "Image/icon/door icon-01.svg"
        anchors.leftMargin: parent.width*.26
        anchors.bottomMargin: parent.height*.345
        anchors.topMargin: parent.height*.075
    }
}


/*##^##
Designer {
    D{i:0;height:206;width:200}
}
##^##*/
