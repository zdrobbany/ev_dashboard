import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
    id: element1
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

        ButtonGroup {
            id: mainLampGroup
            onClicked: config.set_main_lamp(button.idx)
//                // console.log("clicked:", button.text, button.idx)
        }
        ListView {
            id: mainLamp
            width: 200
            height: 100
            contentHeight: 25
            clip: true
            Layout.fillHeight: true
            Layout.minimumWidth: 50
            Layout.fillWidth: true
            Layout.minimumHeight: 100
            Layout.maximumHeight: 150
            Layout.maximumWidth: 200
            spacing: -15
            header: Text {
                text: qsTr("Main Lamp")
            }
            model: ["lamp1Off", "lamp1High", "lamp1Low" ]
            delegate: RadioDelegate {
                text: modelData
                property int idx: index
                checked: index == 0
                ButtonGroup.group: mainLampGroup
            }
        }

        ButtonGroup {
            id: gearGroup
            onClicked: {
                config.set_gear(button.idx)
                // console.log("clicked:", button.idx)
            }
        }
        ListView {
            id: gear
            height: 100
            pixelAligned: true
            contentHeight: 50
            clip: true
            spacing: -15
            Layout.maximumHeight: 250
            Layout.maximumWidth: 200
            Layout.minimumHeight: 99
            Layout.minimumWidth: 50
            Layout.fillHeight: true
            Layout.fillWidth: true
            header: Text {
                text: qsTr("Gear")
            }
            model: ["P", "R", "N", "D", "2", "3"]
            delegate: RadioDelegate {
                text: modelData
                checked: index == 0
                property int idx: index
                ButtonGroup.group: gearGroup
            }
        }

        Item {
            id: speedElement
            width: 200
            height: 77
            Layout.minimumHeight: 45
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
                    // console.log(config.speed_value)
                }
            }
        }

        Item {
            id: powerElement
            width: 200
            height: 77
            Layout.minimumHeight: 45
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
                to: 1
                value: 0
                anchors.top: label1.bottom
                onValueChanged: {
                    config.set_power_value(value*100)
                    // console.log(config.power_value)
                }
            }
        }

        Item {
            id: battery_element
            width: 200
            height: 77
            Layout.minimumHeight: 45
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
                to: 1
                width: parent.width
                height: parent.height*.7
                value: 0
                anchors.top: label2.bottom
                onValueChanged: {
                    config.set_battery_value(value*100)
                    // console.log('battery: ',config.battery_value)
                }
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
            checked: false
            Layout.minimumHeight: 15
            Layout.fillWidth: true
            Layout.fillHeight: true
            onCheckedChanged: {
                config.set_left_turn(checked)
            }
        }

        CheckBox {
            id: right_turn
            text: qsTr("Turn Right")
            checked: false
            Layout.minimumHeight: 15
            Layout.fillHeight: true
            Layout.fillWidth: true
            onCheckedChanged: {
                config.set_right_turn(checked)
            }
        }
        CheckBox {
            id: hazard
            text: qsTr("Hazard")
            checked: false
            Layout.minimumHeight: 15
            Layout.fillHeight: true
            Layout.fillWidth: true
            onCheckedChanged: {
                config.set_right_turn(checked)
                config.set_left_turn(checked)
            }
        }
        CheckBox {
            id: fog_lamp
            text: qsTr("Fog Lamp")
            checked: false
            Layout.minimumHeight: 15
            Layout.fillHeight: true
            Layout.fillWidth: true
            onCheckedChanged: config.set_fog_lamp(checked)
        }


        CheckBox {
            id: safety_belt
            text: qsTr("Safety Belt")
            checked: false
            Layout.minimumHeight: 15
            Layout.fillHeight: true
            Layout.fillWidth: true
            onCheckedChanged: config.set_safety_belt(checked)
        }

        CheckBox {
            id: door
            text: qsTr("Door")
            checked: false
            Layout.minimumHeight: 15
            Layout.fillHeight: true
            Layout.fillWidth: true
            onCheckedChanged: config.set_door_indicator(checked)
        }

        CheckBox {
            id: enggine_check
            text: qsTr("Enggine")
            checked: false
            Layout.minimumHeight: 15
            Layout.fillHeight: true
            Layout.fillWidth: true
            onCheckedChanged: config.set_enggine_check(checked)
        }

        CheckBox {
            id: brake_indicator
            text: qsTr("Brake")
            checked: false
            Layout.minimumHeight: 15
            Layout.fillHeight: true
            Layout.fillWidth: true
            onCheckedChanged: config.set_brake_indicator(checked)
        }

        CheckBox {
            id: park_indicator
            text: qsTr("Park")
            checked: false
            Layout.minimumHeight: 15
            Layout.fillHeight: true
            Layout.fillWidth: true
            onCheckedChanged: config.set_park_indicator(checked)
        }

        CheckBox {
            id: battery_temp
            text: qsTr("Battery Temp")
            checked: false
            Layout.minimumHeight: 15
            Layout.fillHeight: true
            Layout.fillWidth: true
            onCheckedChanged: config.set_battery_temp(checked)
        }

        CheckBox {
            id: motor_temp
            text: qsTr("Motor Temp")
            checked: false
            Layout.minimumHeight: 15
            Layout.fillHeight: true
            Layout.fillWidth: true
            onCheckedChanged: config.set_motor_temp(checked)
        }


        Rectangle {
            id: rectangle1
            color: "#716868"
            Layout.minimumHeight: 25
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
                    // console.log(config.max_speed)
                }
            }
        }

        Rectangle {
            id: rectangle2
            color: "#716868"
            Layout.minimumHeight: 25
            Layout.fillHeight: true
            Layout.fillWidth: true
            border.width: 2
            TextInput {
                id: max_distance
                text: config.max_distance
                anchors.fill: parent
                inputMask: ""
                mouseSelectionMode: TextInput.SelectWords
                verticalAlignment: Text.AlignVCenter
                Layout.minimumHeight: 25
                Layout.fillHeight: true
                font.pixelSize: 15
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                validator: IntValidator{bottom: 10; top: 1000;}
                onAccepted: {
                    config.set_max_distance(parseInt(max_distance.text))
                    // console.log(config.max_distance)
                }
            }
        }

        Rectangle {
            id: rectangle3
            color: "#716868"
            Layout.minimumHeight: 25
            Layout.fillHeight: true
            Layout.fillWidth: true
            border.width: 2
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
                onAccepted: {
                    config.set_odo(parseInt(odo.text))
                    // console.log(config.odo)
                }
            }
        }

        Rectangle {
            id: rectangle4
            color: "#716868"
            Layout.minimumHeight: 25
            Layout.fillHeight: true
            Layout.fillWidth: true
            border.width: 2
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
                onAccepted: {
                    config.set_trip(parseInt(trip.text))
                    // console.log(config.trip)
                }
            }
        }

        Rectangle {
            id: rectangle5
            color: "#716868"
            Layout.fillHeight: true
            border.width: 2
            TextInput {
                id: envo
                width: 80
                height: 30
                text: config.envo_temp
                Layout.fillHeight: true
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                validator: IntValidator {
                    bottom: 0
                    top: 200
                }
                verticalAlignment: Text.AlignVCenter
                Layout.fillWidth: true
                Layout.minimumHeight: 25
                onAccepted: {
                    config.set_envo_temp(parseInt(envo.text))
                    // console.log(config.envo_temp)
                }
            }
            Layout.fillWidth: true
            Layout.minimumHeight: 25
        }
    }
}


/*##^##
Designer {
    D{i:1;anchors_height:100;anchors_width:100;anchors_x:34;anchors_y:112}
}
##^##*/
