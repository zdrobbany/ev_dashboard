import QtQuick 2.12
import QtGraphicalEffects 1.0

Item {
    id: container
    width: height
    height: 100
    property color activeColor1: "#00f0ab"
    property color activeColor2: "#e0d503"
    property color inactiveColor: "#1f2626"
    property int conditon: 0
    property string imageSource: "Image/icon/Turn light icon (kiri)-01.svg"

    /* condition
      0 = off
      1 = on-state1
      2 = on-state2
      3 = on-animate
    */

    states: [
        State {
            name: "on-animate"; when: container.conditon === 3;
            PropertyChanges { target: ticking_timer; running: true;}
        },
        State {
            name: "on"; when: container.conditon === 1;
            PropertyChanges { target: overlay; color: container.activeColor1;}
            PropertyChanges { target: ticking_timer; running: false;}
        },
        State {
            name: "on2"; when: container.conditon === 2;
            PropertyChanges { target: overlay; color: container.activeColor2;}
            PropertyChanges { target: ticking_timer; running: false;}
        },
        State {
            name: "off"; when: container.conditon === 0;
            PropertyChanges { target: overlay; color: container.inactiveColor;}
            PropertyChanges { target: ticking_timer; running: false;}
        }
    ]

    Timer {
        id: ticking_timer
        interval: 1000; running: true; repeat: true
        onTriggered: overlay.state = overlay.state === "on" ? "off" : "on"
    }

    Image {
        id: image
        anchors.fill: parent
        source: container.imageSource
        fillMode: Image.PreserveAspectFit
        visible: false
    }
    ColorOverlay{
        id: overlay
        anchors.fill: image
        source: image
        color: "#00f0ab"
        states: [
            State { name: "on"; PropertyChanges { target: overlay; color: container.activeColor1;} },
            State { name: "off"; PropertyChanges { target: overlay; color: container.inactiveColor;} }
        ]
//        ColorAnimation on color {
//            id: tickingAnimation
//            property bool animate_state: false
//            to: animate_state ? container.on : container.off;
//            duration: 1000
//        }
    }
}
