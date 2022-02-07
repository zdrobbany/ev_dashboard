import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.11
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.4

Item {
    id: container
    width: 240
    height: 94

    Rectangle {
        id: holder
        x: 32
        y: 36
        implicitWidth: 200
        color: "#e6e6e6"
        radius: 3
        implicitHeight: 23
        Shape {
            clip: false
            visible: true
            anchors.fill: parent
            ShapePath {
                id: path
                strokeColor: "#008000"
                fillColor: "#000000"
                startX: 0
                startY: holder.height/2
                strokeStyle: ShapePath.DashLine
                strokeWidth: holder.height*.7
                capStyle: ShapePath.FlatCap
                dashPattern: [1,0.3]
//                fillColor: "transparent"
                PathLine {
                    x: 100
                    y: holder.height/2
                }
            }
        }
    }

}
