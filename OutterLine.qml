import QtQuick 2.11
import QtQuick.Shapes 1.11

Item {
    id: holder
    width: 1280
    height: 600
    Shape {
        id: prog_background
        clip: false
        visible: true
        anchors.fill: parent
//        fillColor: "transparent"
        // Enable multisampled rendering
//        layer.enabled: true
//        layer.samples: 4

        ShapePath {
            id: qwe
            startX: holder.width*.2
            startY: 5
            strokeColor: "#BFCFE5"
            strokeStyle: ShapePath.SolidLine
            fillColor: "transparent"
            PathLine {
                x: holder.width*.8
                y: 5
            }
            PathArc {
                id: rightUpper
                x: holder.width*.99
                y: holder.height*.15
                radiusX: holder.width*.4
                radiusY: holder.height*.5
            }
            PathArc {
                id: rightUpper2
                x: holder.width*.96
                y: holder.height*.7
                radiusX: holder.width*.10
                radiusY: holder.height*.9
            }
//            PathLine {
//                x: holder.width*.9
//                y: holder.height*.9
//            }
            PathArc {
                id: rightbtm
                x: holder.width*.7
                y: holder.height-5
                radiusX: holder.width*.4
                radiusY: holder.height*.5
            }
            PathLine {
                x: holder.width*.4
                y: holder.height-5
            }
            PathArc {
                id: leftbtm
                x: holder.width*.04
                y: holder.height*.7
                radiusX: holder.width*.4
                radiusY: holder.height*.5
            }
            PathArc {
                id: leftUpper
                x: holder.width*.01
                y: holder.height*.15
                radiusX: holder.width*.1
                radiusY: holder.height*.9
            }
            PathArc {
                id: leftUpper2
                x: holder.width*.2
                y: 5
                radiusX: holder.width*.4
                radiusY: holder.height*.5
            }
//            PathLine {
//                x: holder.width*.9
//                y: holder.height*.8
//            }
//            PathArc {
//                id: midleright
//                x: holder.width*.55
//                y: holder.height*.9
//                radiusX: holder.width*.075
//                radiusY: holder.height*.075
//            }
//            PathLine {
//                x: holder.width*.54
//                y: holder.height*.8
//            }
        }
//        ShapePath {
//            id: p
//            startX: 0
//            startY: 200
//            strokeColor: "black"
//            strokeStyle: ShapePath.SolidLine
////            fillGradient: LinearGradient {
////                x1: 0
////                y1: 0
////                x2: p.fieldWidth
////                y2: p.fieldHeight

////                GradientStop {
////                    position: 0
////                    color: "#6c6c6c"
////                }
////                GradientStop {
////                    position: 1
////                    color: "#000000"
////                }
////            }
//            PathArc {
//                id: upperBorder
//                x: 250
//                y: 25
//                radiusX: 500
//                radiusY: 150
//            }
//            PathLine {
//                x: 1030
//                y: 25
//            }
//            PathArc {
//                x: 1280
//                y: 200
//                radiusX: 500
//                radiusY: 150
////                direction: PathArc.Counterclockwise
//            }
//            PathLine {
//                x: 1250
//                y: 350
//            }
//            PathArc {
//                x: 930
//                y: 570
//                radiusX: 1000
//                radiusY: 1000
////                direction: PathArc.Counterclockwise
//            }
//            PathLine {
//                x: 250
//                y: 570
//            }
//            PathArc {
//                x: 20
//                y: 300
//                radiusX: 1000
//                radiusY: 1000
////                direction: PathArc.Counterclockwise
//            }
//            PathLine {
//                x: 0
//                y: 200
//            }
//        }
    }
}
