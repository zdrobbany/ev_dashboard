import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Shapes 1.11
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11
import QtQuick.Shapes 1.12
import Config 1.0

Window {
    id: window
    visible: true
    width: 960
    height: 360
    color: "#00000000"
    title: qsTr("Pindad EV")

    property int speedValue: 0
    property int maxSpeed: 250
    property int powerValue: 0
    property int maxPower: 100
    property int minSpeed: 0
    property color on: "#00f0ab"
    property color off: "#1f2626"
    property color blue: "#0391e0"
    property color warn_red: "#e0d503"
    property color warn_yellow: "#dd054d"

    Config  {
        id: config
    }


    BackGround{
        id: backGround
        anchors.fill: parent

        RowLayout {
            id: headerIcon
            width: parent.width*.35
            height: parent.height*.1
            spacing: parent.width*.005
            anchors.topMargin: parent.height*.175
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter


            IconIndicator {
                id: leftTurn
                imageSource: "Image/icon/Turn light icon (kiri)-01.svg"
                conditon: 3
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            IconIndicator {
                id: mainLamp
                conditon: 1
                imageSource: "Image/icon/main lamp high icon-01.svg"
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Text {
                id: temp
                width: 100
                height: 100
                color: "#ffffff"
                text: qsTr("Text")
                font.family: "Roboto"
                Layout.minimumWidth: 30
                wrapMode: Text.WrapAnywhere
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pixelSize: 12
            }

            Item {
                id: element
                width: 100
                height: 100
                Layout.fillHeight: true
                Layout.fillWidth: true
                Text {
                    id: gear
                    height: parent.height*.7
                    color: "#00f0ab"
                    text: qsTr("D")
                    font.family: "Roboto"
                    font.weight: Font.Bold
                    font.underline: true
                    font.pointSize: height*.7
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: textGear
                    height: parent.height*.3
                    color: "#ffffff"
                    text: qsTr("Sport")
                    font.family: "Roboto"
                    font.underline: false
                    font.pointSize: height*.5
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: gear.bottom
                }
            }

            Text {
                id: element5
                width: 100
                height: 100
                color: "#ffffff"
                text: qsTr("Text")
                font.family: "Roboto"
                Layout.minimumWidth: 30
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pixelSize: 12
            }

            IconIndicator {
                id: fogLamp
                conditon: 1
                imageSource: "Image/icon/fog lamp icon.svg"
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            IconIndicator {
                id: rightTurn
                conditon: 3
                imageSource: "Image/icon/turn light icon (kanan)-01.svg"
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        RowLayout {
            id: odoRow
            width: parent.width*.1
            height: parent.height*.03
            anchors.topMargin: parent.height*.35
            anchors.left: parent.left
            spacing: 10
            anchors.top: parent.top
            Text {
                id: odoText
                color: "#00f0ab"
                text: "ODO"
                font.family: "Roboto"
                Layout.fillHeight: true
                font.pixelSize: parent.height*1
                verticalAlignment: Text.AlignVCenter
            }

            Text {
                id: odo_value
                color: "#ffffff"
                text: config.odo
                font.family: "Roboto"
                horizontalAlignment: Text.AlignRight
                Layout.fillHeight: true
                font.pixelSize: parent.height*1
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
            }

            Text {
                id: element2
                color: "#ffffff"
                text: "km"
                font.family: "Roboto"
                Layout.fillHeight: true
                font.pixelSize: parent.height*1
                verticalAlignment: Text.AlignVCenter
            }
            anchors.leftMargin: parent.width*.14
        }

        RowLayout {
            id: tripRow
            width: parent.width*.1
            height: parent.height*.03
            anchors.topMargin: parent.height*.02
            anchors.left: odoRow.left
            spacing: 10
            anchors.top: odoRow.bottom
            Text {
                id: tripText
                color: "#00f0ab"
                text: "TRIP"
                font.family: "Roboto"
                Layout.fillHeight: true
                font.pixelSize: parent.height*1
                verticalAlignment: Text.AlignVCenter
            }

            Text {
                id: trip_value
                color: "#ffffff"
                text: config.trip
                font.family: "Roboto"
                horizontalAlignment: Text.AlignRight
                Layout.fillHeight: true
                font.pixelSize: parent.height*1
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
            }

            Text {
                id: element4
                color: "#ffffff"
                text: "km"
                font.family: "Roboto"
                Layout.fillHeight: true
                font.pixelSize: parent.height*1
                verticalAlignment: Text.AlignVCenter
            }
        }

        IndicatorGroup {
            id: indicatorGroup
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 98
            anchors.left: headerIcon.right
            anchors.leftMargin: 44
            anchors.right: parent.right
            anchors.rightMargin: 68
            anchors.top: parent.top
            anchors.topMargin: 56
        }

        Text {
            id: powerUnit
            width: parent.width*.1
            height: parent.height*.03
            color: "#ffffff"
            text: qsTr("%")
            anchors.rightMargin: parent.width*.238
            anchors.topMargin: parent.height*.03
            anchors.right: parent.right
            horizontalAlignment: Text.AlignHCenter
            anchors.top: power.bottom
            font.weight: Font.DemiBold
            font.bold: true
            font.family: "Roboto"
            font.pixelSize: height*.7
            wrapMode: Text.NoWrap
            transform: Rotation { origin.x: 0; origin.y: 40; axis { x: 0; y: 1; z: 0 } angle: 30 }
        }
        DropShadow {
            anchors.fill: powerUnit
            horizontalOffset: -7
            verticalOffset: 7
            radius: 7.9
            opacity: 0.7
            cached: true
            transparentBorder: false
            spread: 0
            samples: 30
            color: "#80000000"
            source: powerUnit
            transform: Rotation { origin.x: 0; origin.y: 40; axis { x: 0; y: 1; z: 0 } angle:30 }
        }

        Text {
            id: power
            width: parent.height*.15
            height: parent.height*.08
            color: "#ffffff"
            text: qsTr(config.power_value.toString())
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.topMargin: parent.height*.36
            anchors.top: parent.top
            anchors.rightMargin: parent.width*.275
            anchors.leftMargin: parent.width*.045
            anchors.right: parent.right
            font.weight: Font.DemiBold
            font.bold: true
            font.family: "Roboto"
            font.pixelSize: height*.8
            wrapMode: Text.NoWrap
            transform: Rotation { origin.x: 0; origin.y: 40; axis { x: 0; y: 1; z: 0 } angle: 30 }
        }
        DropShadow {
            anchors.fill: power
            horizontalOffset: -7
            verticalOffset: 7
            radius: 7.9
            opacity: 0.7
            cached: true
            transparentBorder: false
            spread: 0
            samples: 30
            color: "#80000000"
            source: power
            transform: Rotation { origin.x: 0; origin.y: 40; axis { x: 0; y: 1; z: 0 } angle:-30 }
        }

        Text {
            id: speedUnit
            width: parent.width*.1
            height: parent.height*.03
            color: "#ffffff"
            text: qsTr("km/h")
            anchors.leftMargin: parent.width*.238
            anchors.topMargin: parent.height*.03
            horizontalAlignment: Text.AlignHCenter
            anchors.top: speed.bottom
            anchors.left: parent.left
            font.weight: Font.DemiBold
            font.bold: true
            font.family: "Roboto"
            font.pixelSize: height*.7
            wrapMode: Text.NoWrap
            transform: Rotation { origin.x: 0; origin.y: -40; axis { x: 0; y: 1; z: 0 } angle: -30 }
        }
        DropShadow {
            anchors.fill: speedUnit
            horizontalOffset: 7
            verticalOffset: 7
            radius: 7.9
            opacity: 0.7
            cached: true
            transparentBorder: false
            spread: 0
            samples: 30
            color: "#80000000"
            source: speedUnit
            transform: Rotation { origin.x: 0; origin.y: -40; axis { x: 0; y: 1; z: 0 } angle: -30 }
        }

        Text {
            id: speed
            width: parent.height*.15
            height: parent.height*.08
            color: "#ffffff"
            text: qsTr(config.speed_value.toString())
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.leftMargin: parent.width*.275
            anchors.topMargin: parent.height*.36
            anchors.top: parent.top
            anchors.left: parent.left
            font.weight: Font.DemiBold
            font.bold: true
            font.family: "Roboto"
            font.pixelSize: height*.8
            wrapMode: Text.NoWrap
            transform: Rotation { origin.x: 0; origin.y: -40; axis { x: 0; y: 1; z: 0 } angle: -30 }
        }
        DropShadow {
            anchors.fill: speed
            horizontalOffset: 7
            verticalOffset: 7
            radius: 7.9
            opacity: 0.7
            cached: true
            transparentBorder: false
            spread: 0
            samples: 30
            color: "#80000000"
            source: speed
            transform: Rotation { origin.x: 0; origin.y: -40; axis { x: 0; y: 1; z: 0 } angle: -30 }
        }
    }


    CustomLongBar {
        id: customLongBar
        property real vAnchor: parent.height*.11
        width: parent.width*.23
        height: parent.height*1
        anchors.leftMargin: parent.width*.169
        side: 0
        anchors.bottomMargin: parent.height*.017
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        rotation: 180
        progressValue: config.speed_value/config.max_speed
    }

    CustomLongBar {
        id: customLongBar1
        width: parent.width*.23
        height: parent.height
        anchors.rightMargin: parent.width*.169
        anchors.right: parent.right
        side: 1
        anchors.bottomMargin: 6
        anchors.bottom: parent.bottom
        rotation: 180
        progressValue: config.power_value/100
    }

    CustomLongBar {
        id: customLongBar2
        width: parent.width*.4
        height: parent.height
        anchors.topMargin: parent.height*.235
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        progressValue: config.battery_value/100
        side: 2
        rotation: 180
    }

    RowLayout {
        id: batteryIndicator
        x: 581
        y: 249
        property int batteryValue: 75
        property int distantLeft: 325
        width: 202
        height: 58
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: baterryText
            color: "#ffffff"
            text: qsTr(config.battery_value + " %")
            font.family: "Roboto"
            Layout.minimumWidth: parent.width*.3
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.pixelSize: 12
        }

        IconIndicator {
            id: iconIndicator
            Layout.fillHeight: true
            Layout.fillWidth: true
            imageSource: "Image/icon/battery icon-01.svg"
            conditon: 0
            activeColor1: window.blue
        }

        Text {
            id: batteryDistanceText
            color: "#ffffff"
            text: qsTr(config.max_distance*(config.battery_value/100) + " Km")
            font.family: "Roboto"
            Layout.minimumWidth: parent.width*.3
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.pixelSize: 12
        }

    }

    Image {
        id: motorTemp
        x: 592
        width: height
        height: parent.height*.1
        anchors.rightMargin: parent.width*.35
        anchors.topMargin: parent.height*.38
        anchors.right: parent.right
        anchors.top: parent.top
        source: "Image/icon/motor temperature icon-01.svg"
        fillMode: Image.PreserveAspectFit
        transform: Rotation { origin.x: 0; origin.y: -150; axis { x: 0; y: -1; z: 0 } angle: -25 }
    }
    ColorOverlay{
        anchors.fill: motorTemp
        source: motorTemp
        color: "#00f0ab"
        transform: Rotation { origin.x: 0; origin.y: -150; axis { x: 0; y: -1; z: 0 } angle: -25 }
    }

    Image {
        id: batteryTemp
        width: height
        height: parent.height*.09
        anchors.leftMargin: parent.width*.355
        anchors.topMargin: parent.height*.38
        anchors.left: parent.left
        anchors.top: parent.top
        source: "Image/icon/Battery temperature icon-01.svg"
        fillMode: Image.PreserveAspectFit
        transform: Rotation { origin.x: 0; origin.y: -200; axis { x: 0; y: 1; z: 0 } angle: -25 }
    }

    ColorOverlay{
        anchors.fill: batteryTemp
        source: batteryTemp
        color: "#00f0ab"
        transform: Rotation { origin.x: 0; origin.y: -200; axis { x: 0; y: 1; z: 0 } angle: -25 }
    }
    TestElement {
        id: settingPanel
        config: config
        x: 336
        y: 0
        width: parent.width*.3
        height: parent.height
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Button {
        id: button
        y: 320
        text: qsTr("setting")
        checkable: false
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        onClicked: {
            settingPanel.visible = settingPanel.visible ? false : true
        }
    }

}


