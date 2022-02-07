import QtQuick 2.0

Item {
id: indicatorGroup
width: 200
height: 209

    IconIndicator {
        id: safetyBelt
        width: height
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
    D{i:0;height:206;width:200}D{i:1}D{i:2}D{i:3}D{i:4}D{i:5}
}
##^##*/
