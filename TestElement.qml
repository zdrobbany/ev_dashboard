import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Shapes 1.11
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11
import QtQuick.Shapes 1.12
import Config 1.0

Item {
    id: element1
    x:0
    y:0
    width: 400
    height: 360
    property var config
    Rectangle {
        id: rectangle
        color: "#0391e0"
        radius: 20
        anchors.fill: parent
    }


    ColumnLayout {
        id: columnLayout1
        width: parent.width*.5
        height: parent.height
        anchors.left: columnLayout.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right

        ListView {
            id: mainLamp
            width: 200
            height: 100
            clip: true
            Layout.fillHeight: true
            Layout.minimumWidth: 50
            Layout.fillWidth: true
            Layout.minimumHeight: 50
            Layout.maximumHeight: 150
            Layout.maximumWidth: 200

            spacing: -15
            header: Text {
                text: qsTr("Main Lamp")
            }
            model: ["lamp1High", "lamp1Low", "lamp1Off"]
            delegate: RadioDelegate {
                text: modelData
                checked: config.main_lamp
                width: parent.width
                height: parent.height/mainLamp.model.count
            }
        }

        ListView {
            id: gear
            height: 100
            clip: true
            spacing: -15
            Layout.maximumHeight: 250
            Layout.maximumWidth: 200
            Layout.minimumHeight: 110
            Layout.minimumWidth: 50
            Layout.fillHeight: true
            Layout.fillWidth: true
            header: Text {
                text: qsTr("Gear")
            }
            model: ["R", "N", "D", "2", "3", "P"]
            delegate: RadioDelegate {
                text: modelData
                checked: config.gear
            }
        }

        Item {
            id: speedElement
            width: 200
            height: 77
            Layout.minimumHeight: 50
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                id: label0
                x: 0
                width: parent.width
                height: parent.height*.3
                text: qsTr("Speed")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }

            Slider {
                id: slider
                x: 0
                width: parent.width
                height: parent.height*.7
                anchors.top: label0.bottom
                to: 1
                value: 0
                onValueChanged: {
                    config.set_speed_value(value*config.max_speed)
                    console.log(config.speed_value)
                }
            }
        }

        Item {
            id: powerElement
            width: 200
            height: 77
            Layout.minimumHeight: 50
            Layout.fillHeight: true
            Layout.fillWidth: true
            Text {
                id: label1
                x: 0
                width: parent.width
                height: parent.height*.3
                text: qsTr("Power")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }

            Slider {
                id: slider1
                x: 0
                width: parent.width
                height: parent.height*.7
                to: 100
                value: config.battery_value
                anchors.top: label1.bottom
            }
        }

        Item {
            id: battery_element
            width: 200
            height: 77
            Layout.minimumHeight: 50
            Layout.fillHeight: true
            Layout.fillWidth: true
            Text {
                id: label2
                x: 0
                width: parent.width
                height: parent.height*.3
                text: qsTr("Battery")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }

            Slider {
                id: slider2
                x: 0
                from: 0
                to: 100
                width: parent.width
                height: parent.height*.7
                value: config.battery_value
                anchors.top: label2.bottom
            }
        }

    }


    ColumnLayout {
        id: columnLayout
        width: parent.width*.5
        height: parent.height
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        CheckBox {
            id: left_turn
            text: qsTr("Turn Left")
            checked: config.left_turn
            Layout.minimumHeight: 20
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        CheckBox {
            id: right_turn
            text: qsTr("Turn Right")
            checked: config.right_turn
            Layout.minimumHeight: 20
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        CheckBox {
            id: fog_lamp
            text: qsTr("Fog Lamp")
            checked: config.fog_lamp
            Layout.minimumHeight: 20
            Layout.fillHeight: true
            Layout.fillWidth: true
        }


        CheckBox {
            id: safety_belt
            text: qsTr("Safety Belt")
            checked: config.safety_belt
            Layout.minimumHeight: 20
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        CheckBox {
            id: door
            text: qsTr("Door")
            checked: config.door_indicator
            Layout.minimumHeight: 20
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        CheckBox {
            id: enggine_check
            text: qsTr("Enggine")
            checked: config.enggine_check
            Layout.minimumHeight: 20
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        CheckBox {
            id: brake_indicator
            text: qsTr("Fog Lamp")
            checked: config.brake_indicator
            Layout.minimumHeight: 20
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        CheckBox {
            id: battery_temp
            text: qsTr("Battery Temp")
            checked: config.battery_temp
            Layout.minimumHeight: 20
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        CheckBox {
            id: motor_temp
            text: qsTr("Motor Temp")
            checked: config.motor_temp
            Layout.minimumHeight: 20
            Layout.fillHeight: true
            Layout.fillWidth: true
        }


        Rectangle {
            id: rectangle1
            color: "#716868"
            Layout.minimumHeight: 30
            Layout.fillHeight: true
            Layout.fillWidth: true
            border.width: 2

            TextInput {
                id: max_speed
                text: config.max_speed
                anchors.fill: parent
                inputMask: ""
                verticalAlignment: Text.AlignVCenter
                Layout.minimumHeight: 25
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: true
                Layout.fillHeight: true
                font.pixelSize: 15
                validator: IntValidator{bottom: 80; top: 400;}
                onAccepted: {
                    config.set_max_speed(parseInt(max_speed.text))
                    console.log(config.max_speed)
                }
            }
        }

        TextInput {
            id: max_distance
            width: 80
            height: 30
            text: config.max_distance
            inputMask: ""
            mouseSelectionMode: TextInput.SelectWords
            verticalAlignment: Text.AlignVCenter
            Layout.minimumHeight: 25
            Layout.fillHeight: true
            font.pixelSize: 15
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignHCenter
            validator: IntValidator{bottom: 10; top: 1000;}

            Rectangle {
                id: rectangle2
                color: "#716868"
                border.width: 2
                anchors.fill: parent
            }
        }

        TextInput {
            id: odo
            width: 80
            height: 30
            text: config.odo
            verticalAlignment: Text.AlignVCenter
            Layout.minimumHeight: 25
            Layout.fillHeight: true
            font.pixelSize: 15
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignHCenter
            validator: IntValidator{bottom: 00; top: 1000000;}

            Rectangle {
                id: rectangle3
                color: "#716868"
                border.width: 2
                anchors.fill: parent
            }
        }

        TextInput {
            id: trip
            width: 80
            height: 30
            text: config.trip
            verticalAlignment: Text.AlignVCenter
            Layout.minimumHeight: 25
            Layout.fillHeight: true
            font.pixelSize: 15
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignHCenter
            validator: IntValidator{bottom: 00; top: 1000000;}

            Rectangle {
                id: rectangle4
                color: "#716868"
                border.width: 2
                anchors.fill: parent
            }
        }

    }



}





/*##^##
Designer {
    D{i:1;anchors_height:100;anchors_width:100;anchors_x:34;anchors_y:112}
}
##^##*/
