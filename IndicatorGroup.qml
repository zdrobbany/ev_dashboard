import QtQuick 2.0

Item {
id: indicatorGroup
width: 200
height: 209

Image {
    id: safetyBelt
    x: 34
    y: 45
    width: height
    height: parent.height*.175
    source: "Image/icon/seat belt icon-01.svg"
    fillMode: Image.PreserveAspectFit
}

Image {
    id: parkWarning
    x: 100
    y: 34
    width: height
    height: parent.height*.175
    source: "Image/icon/parking warning icon-01.svg"
    fillMode: Image.PreserveAspectFit
}

Image {
    id: parkBrake
    x: 129
    y: 76
    width: height
    height: parent.height*.175
    source: "Image/icon/parking brake icon-01.svg"
    fillMode: Image.PreserveAspectFit
}

Image {
    id: enggineWarn
    x: 106
    y: 118
    width: height
    height: parent.height*.175
    source: "Image/icon/engine error icon-01.svg"
    fillMode: Image.PreserveAspectFit
}

Image {
    id: door
    x: 53
    y: 95
    width: height
    height: parent.height*.175
    source: "Image/icon/door icon-01.svg"
    fillMode: Image.PreserveAspectFit
}
}
