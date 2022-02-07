import QtQuick 2.11
import QtQuick.Controls 2.12
//import QtQuick.Controls.Styles 1.12
import QtQuick.Shapes 1.12
//import QtGraphicalEffects 1.0

Item {
    id:holder
    ProgressBar {
        id:control
        clip: true
        value: 0.3
        background: Image {
            id: background
            source: "Image/EV-Instrument-Cluster-Design-3-05.png"
            rotation: 180
//            ColorOverlay {
//                width: parent.width
//                color: "grey"
//                anchors.fill: background
//                antialiasing: true
//                source: background
//            }
        }
        contentItem: Item {
            width: parent.width
            height: control.visualPosition * parent.height
            clip: true
//            Rectangle {
//            width: parent.width
//            height: control.visualPosition * ba.height
//            clip: true
//            anchors.bottom: parent.bottom
//            }
            Image {
                anchors.fill: background
                source: "Image/EV-Instrument-Cluster-Design-3-05.png"
                width: control.width
                height: control.height
                rotation: 180
                clip: false
                fillMode: Image.PreserveAspectCrop
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1}
}
##^##*/
