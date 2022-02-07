import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Shapes 1.11
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.4
//import QtQuick.Controls.Styles 1.4

Item {
    id: holder
    width: 400
    height: 400
    property alias valueFontpixelSize: value.font.pixelSize
    property alias unitText: unit.text
    property color point_color: "#313C50"
    property real progress_percentage: 0.2
    property color progress_color: "#00C08B"
    property color pbg_color: "#E7EDF5"
    property real realValue: 10
    property real minValue: 0
    property real maxValue: 200
    property var dashpattern: [1,5]

    FontLoader { id: cherry; source: "./Fonts/CherrySwash-Regular.otf" }
    FontLoader { id: ibm; source: "./Fonts/IBMPlexMono-Light.otf" }

    Shape {
        id: prog_background
        clip: true
        anchors.fill: parent
        // Enable multisampled rendering
        layer.enabled: true
        layer.samples: 4
        ShapePath {
            id: prog_path
            strokeColor: holder.pbg_color
            strokeStyle: ShapePath.SolidLine
            strokeWidth: prog_background.width*.07
            capStyle: ShapePath.FlatCap
            fillColor: "transparent"
            PathAngleArc {
                centerX: (prog_background.width)/2; centerY: (holder.height)/2
                radiusX: (prog_background.width)/3; radiusY: (holder.height)/3
                startAngle: 135
                sweepAngle: 270
            }
        }
    }



    Shape {
        id: progressbar
        clip: true
        anchors.fill: parent
        layer.samples: 4
        layer.enabled: true
        ShapePath {
            id: test2
            strokeWidth: progressbar.width*.07
            fillColor: "transparent"
            PathAngleArc {
                centerY: (progressbar.height)/2
                sweepAngle: holder.progress_percentage*270
                startAngle: 135
                centerX: (progressbar.width)/2
                radiusX: (progressbar.width)/3 + 0.1
                radiusY: (progressbar.height)/3 +0.1
            }
            strokeColor: holder.progress_color
            capStyle: ShapePath.FlatCap
            strokeStyle: ShapePath.SolidLine
        }
    }
    Shape {
        id: pointer
        clip: true
        anchors.fill: parent
        layer.samples: 4
        layer.enabled: true
        ShapePath {
            id: thepath
            strokeWidth: progressbar.width*.07
            fillColor: "transparent"
            PathAngleArc {
                centerY: (progressbar.height)/2
                sweepAngle: 3
                startAngle: 135 + (holder.progress_percentage*270) - 2
                centerX: (progressbar.width)/2
                radiusX: (progressbar.width)/3 + 0.1
                radiusY: (progressbar.height)/3 +0.1
            }
            strokeColor: "#313c50"
            capStyle: ShapePath.FlatCap
            strokeStyle: ShapePath.SolidLine
        }
    }
    Shape {
        id: dashline
        clip: true
        anchors.fill: parent
        layer.samples: 4
        layer.enabled: true
        ShapePath {
            id: dash
            strokeWidth: progressbar.width*.01
            dashPattern: holder.dashpattern
            fillColor: "transparent"
            PathAngleArc {
                centerY: (progressbar.height)/2
                sweepAngle: 270
                startAngle: 135
                centerX: (progressbar.width)/2
                radiusX: (progressbar.width)/3 + test2.strokeWidth/2 - 1
                radiusY: (progressbar.height)/3+ test2.strokeWidth/2 - 1
            }
            strokeColor: "#313c50"
            capStyle: ShapePath.FlatCap
            strokeStyle: ShapePath.DashLine
        }
    }

    Item {
        id: el_rotate
        width: midle_component.width
        height: midle_component.height
        rotation: -45 + (progress_percentage*270)
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Image {
            id: image
            x: -115
            y: 57
            width: parent.width*.05
            height: width
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.left
            rotation: 270
            fillMode: Image.PreserveAspectFit
            source: "Image/triangle.svg"
            visible: false
        }
        ColorOverlay{
            anchors.fill: image
            rotation: 270
            source:image
            color: progress_color
            antialiasing: true
        }

//        Rectangle {
//            id: rectangle3
//            width: test2.strokeWidth
//            anchors.verticalCenter: parent.verticalCenter
//            anchors.right: image.left
//            anchors.rightMargin: -2
//            height: 10
//            color: "#313c50"
//            radius: 5
//            opacity: 1
//        }
    }

    Rectangle {
        id: midle_component
        width: parent.width*.55
        height: width
        color: "#00000000"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        border.width: 2
        radius: width/2
        border.color: "#00c08b"

        Text {
            id: value
            x: 92
            width: parent.width*.4
            height: parent.height*.4
            text: realValue
            font.family: "IBM Plex Mono"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: parent.height*.15
            anchors.top: parent.top
            font.pixelSize: height*.75
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: rectangle
            x: 12
            width: parent.width*.6
            height: 2
            color: "#000000"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: value.bottom
        }

        Text {
            id: unit
            x: 98
            width: parent.width*.4
            height: parent.height*.15
            text: qsTr("Km/h")
            font.family: "ibM Plex Mono"
            font.weight: Font.Light
            font.capitalization: Font.AllUppercase
            font.pixelSize: height*.7
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.topMargin: parent.height*.025
            anchors.top: rectangle.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: rectangle2
            x: 2
            width: parent.width*.4
            height: 2
            color: "#000000"
            anchors.topMargin: parent.height*.05
            anchors.top: unit.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }




    //    Shape {
    //        id: shape1
    //        anchors.fill: parent
    //        layer.samples: 4
    //        layer.enabled: true
    //        ShapePath {
    //            id: test1
    //            dashOffset: 0.9
    //            strokeWidth: 2
    //            strokeColor: holder.progress_color
    //            strokeStyle: ShapePath.DashLine
    //            PathAngleArc {
    //                radiusY: (shape1.height)/3+12
    //                sweepAngle: 270
    //                centerX: (shape1.width)/2
    //                radiusX: (shape1.width)/3+12
    //                startAngle: 135
    //                centerY: (shape1.height)/2
    //            }
    //            capStyle: ShapePath.FlatCap
    //        }
    //    }

    Rectangle {
        id: rectangle1
        x: 130
        width: parent.width*.4
        height: parent.height*.075
        color: "#ffffff"
        radius: 20
        anchors.topMargin: parent.height*.05
        anchors.top: midle_component.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: element
            text: qsTr("000000")
            font.family: "ibm Plex Mono"
            font.letterSpacing: 6
            font.wordSpacing: 0
            font.pixelSize: parent.height*.7
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
        }
    }


    Rectangle {
        id: point
        property int angle: 135
        x : (holder.width/2) + Math.cos((2*Math.PI)*angle/360)*(holder.width*.36);
        y : (holder.height/2) + Math.sin((2*Math.PI)*angle/360)*(holder.height*.35) - (height/2);
        width: 2
        height: 13
        color: point_color
        radius: 0
        visible: false
        rotation: 45
        transformOrigin: Item.Center
    }
    Rectangle {
        id: point1
        property int angle: 135 + 27*1
        x : (holder.width/2) + Math.cos((2*Math.PI)*angle/360)*(holder.width*.36);
        y : (holder.height/2) + Math.sin((2*Math.PI)*angle/360)*(holder.height*.35) - (height/2);
        width: 2
        height: 10
        color: point_color
        radius: 0
        visible: false
        rotation: 45 + 27*1
        transformOrigin: Item.Center
    }
    Rectangle {
        id: point2
        property int angle: 135 + 27*2
        x : (holder.width/2) + Math.cos((2*Math.PI)*angle/360)*(holder.width*.36);
        y : (holder.height/2) + Math.sin((2*Math.PI)*angle/360)*(holder.height*.35) - (height/2);
        width: 2
        height: 8
        color: point_color
        radius: 0
        visible: false
        rotation: 45 + 27*2
        transformOrigin: Item.Center
    }
    Rectangle {
        id: point3
        property int angle: 135 + 27*3
        x : (holder.width/2) - 2 + Math.cos((2*Math.PI)*angle/360)*(holder.width*.36);
        y : (holder.height/2) - 2 + Math.sin((2*Math.PI)*angle/360)*(holder.height*.35) - (height/2);
        width: 2
        height: 8
        color: point_color
        radius: 0
        visible: false
        rotation: 45 + 27*3
        transformOrigin: Item.Center
    }
    Rectangle {
        id: point4
        property int angle: 135 + 27*4
        x : (holder.width/2) + Math.cos((2*Math.PI)*angle/360)*(holder.width*.36);
        y : (holder.height/2) + Math.sin((2*Math.PI)*angle/360)*(holder.height*.36) - (height/2);
        width: 2
        height: 8
        color: point_color
        radius: 0
        visible: false
        rotation: 45 + 27*4
        transformOrigin: Item.Center
    }
    Rectangle {
        id: point5
        property int angle: 135 + 27*5
        x : (holder.width/2) + Math.cos((2*Math.PI)*angle/360)*(holder.width*.36);
        y : (holder.height/2) + Math.sin((2*Math.PI)*angle/360)*(holder.height*.36) - (height/2);
        width: 2
        height: 8
        color: point_color
        radius: 0
        visible: false
        rotation: 45 + 27*5
        transformOrigin: Item.Center
    }
    Rectangle {
        id: point6
        property int angle: 135 + 27*6
        x : (holder.width/2) + Math.cos((2*Math.PI)*angle/360)*(holder.width*.36);
        y : (holder.height/2) + Math.sin((2*Math.PI)*angle/360)*(holder.height*.36) - (height/2);
        width: 2
        height: 8
        color: point_color
        radius: 0
        visible: false
        rotation: 45 + 27*6
        transformOrigin: Item.Center
    }
    Rectangle {
        id: point7
        property int angle: 135 + 27*7
        x : (holder.width/2) + Math.cos((2*Math.PI)*angle/360)*(holder.width*.36);
        y : (holder.height/2) + Math.sin((2*Math.PI)*angle/360)*(holder.height*.35) - (height/2);
        width: 2
        height: 8
        color: point_color
        radius: 0
        visible: false
        rotation: 45 + 27*7
        transformOrigin: Item.Center
    }
    Rectangle {
        id: point8
        property int angle: 135 + 27*8
        x : (holder.width/2) + Math.cos((2*Math.PI)*angle/360)*(holder.width*.36);
        y : (holder.height/2) + Math.sin((2*Math.PI)*angle/360)*(holder.height*.35) - (height/2);
        width: 2
        height: 8
        color: point_color
        radius: 0
        visible: false
        rotation: 45 + 27*8
        transformOrigin: Item.Center
    }
    Rectangle {
        id: point9
        property int angle: 135 + 27*9
        x : (holder.width/2) + Math.cos((2*Math.PI)*angle/360)*(holder.width*.36);
        y : (holder.height/2) + Math.sin((2*Math.PI)*angle/360)*(holder.height*.35) - (height/2);
        width: 2
        height: 8
        color: point_color
        radius: 0
        visible: false
        rotation: 45 + 27*9
        transformOrigin: Item.Center
    }

    Rectangle {
        id: point10
        property int angle: 135 + 270
        x : (holder.width/2) + Math.cos((2*Math.PI)*angle/360)*(holder.width*.36);
        y : (holder.height/2) + Math.sin((2*Math.PI)*angle/360)*(holder.height*.35) - (height/2);
        width: 2
        height: 10
        color: point_color
        radius: 0
        visible: false
        rotation: 45 + 27*10
        transformOrigin: Item.Center
    }

    Slider {
        id: slider
        width: parent.width*.5
        height: parent.height*.1
        from: minValue
        to: maxValue
        stepSize: 1
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        value: realValue
        onValueChanged: {
            realValue = slider.value
            progress_percentage = (realValue/(maxValue-minValue))
        }
    }

    /*
    Text {
        id: element1
        x: 182
        y: 29
        text: progress_percentage
        font.pixelSize: 12
    }
    */

}




