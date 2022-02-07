import QtQuick 2.12
import QtGraphicalEffects 1.0

Item {
    id: container
    width: height
    height: 100
    property color activeColor1: "#00f0ab"
    property color activeColor2: "#e0d503"
    property color inactiveColor: "#1f2626"
    property int condition: 0
    property string imageSource: "Image/icon/Turn light icon (kiri)-01.svg"
    property string imageSource2: "Image/icon/Turn light icon (kiri)-01.svg"

    /* condition
      0 = off
      1 = on-state1
      2 = on-state2
    */

    states: [
        State {
            name: "on"; when: container.condition === 1;
            PropertyChanges { target: overlay; color: container.activeColor1;}
            PropertyChanges { target: image; source: container.imageSource;}
        },
        State {
            name: "on2"; when: container.condition === 2;
            PropertyChanges { target: overlay; color: container.activeColor2;}
            PropertyChanges { target: image; source: container.imageSource2;}
        },
        State {
            name: "off"; when: container.condition === 0;
            PropertyChanges { target: overlay; color: container.inactiveColor;}
            PropertyChanges { target: image; source: container.imageSource;}
        }
    ]

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
//        ColorAnimation on color {
//            id: tickingAnimation
//            property bool animate_state: false
//            to: animate_state ? container.on : container.off;
//            duration: 1000
//        }
    }
}
