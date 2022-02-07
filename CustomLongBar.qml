import QtQuick 2.11
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12
import QtGraphicalEffects 1.0


Item {
    id:holder
    width: 296
    height: 713
    property real progressValue: 0.2
    property int side: 0
    states: [
        State {
            name: "left"; when: side=== 0
            PropertyChanges { target: background; source: "Image/Speed line kosong (kiri).svg"; rotation: 180}
            PropertyChanges { target: progressImg; source: "Image/Speed line full (kiri).svg"; rotation: 180}
            PropertyChanges { target: progressContainer; progressiveBar: control.height*.175 + ((control.visualPosition * control.height*.65))}
            },
        State {
            name: "right"; when: side === 1
            PropertyChanges { target: background; source: "Image/Power line kosong (kanan)-01.svg"; rotation: 180}
            PropertyChanges { target: progressImg; source: "Image/Power line full (kanan)-01.svg"; rotation: 180}
            PropertyChanges { target: progressContainer; progressiveBar: control.height*.175 + ((control.visualPosition * control.height*.65))}
        },
        State {
            name: "bottom"; when: side === 2
            PropertyChanges { target: background; source: "Image/Battery line kosong-01.svg"; rotation: 180}
            PropertyChanges { target: progressImg; source: "Image/Battery line full"; rotation: 180}
            PropertyChanges { target: progressContainer; progressiveBar: control.height*.38 + ((control.visualPosition * control.height*.23))}
        }

    ]
    ProgressBar {
        id:control
        anchors.fill: parent
        clip: true
        value: holder.progressValue
        background: Image {
            id: background
            source: "/Image/Power line kosong (kanan)-01.svg"
            smooth: true
            fillMode: Image.PreserveAspectFit
//            ColorOverlay {
//                width: parent.width
//                color: "grey"
//                anchors.fill: background
//                antialiasing: true
//                source: background

//            }
        }
        contentItem: Item {
            id: progressContainer
            property real progressiveBar: control.height*.175 + ((control.visualPosition * control.height*.65))
            width: parent.width
            height: progressiveBar
            clip: true
            Image {
                id: progressImg
                source: "/Image/Power line full (kanan)-01.svg"
                width: control.width
                height: control.height
                smooth: true
                clip: false
                fillMode: Image.PreserveAspectFit
            }
        }
    }
}

