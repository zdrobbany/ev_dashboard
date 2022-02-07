import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    anchors.fill: parent
    width: 1920
    height: 720


    Image {
        id: lastLayer
        anchors.fill: parent
        source: "Image/Background fix revisi-01.png"
        fillMode: Image.PreserveAspectFit

        Image {
            id: leftShape
            y: parent.height*.005
            width: parent.width*.2345
            height: parent.height
            anchors.leftMargin: parent.width*.13
            anchors.left: parent.left
            source: "Image/Speed Bar (kiri).svg"
            fillMode: Image.PreserveAspectCrop
        }

        Image {
            id: rightShape
            x: 250
            y: -parent.height*.015
            width: parent.width*.230
            height: parent.height
            visible: true
            source: "Image/Power bar (kanan).svg"
            anchors.right: parent.right
            fillMode: Image.PreserveAspectCrop
            anchors.rightMargin: parent.width*.13
        }

        Image {
            id: rightIconContainer
            x: 1156
            width: parent.width*.078
            anchors.rightMargin: parent.width*.318
            anchors.bottomMargin: parent.height*.078
            anchors.topMargin: -parent.height*.078
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.top: parent.top
            source: "Image/Motor temperature bar-01.svg"
            fillMode: Image.PreserveAspectFit
        }
//        ColorOverlay{
//            anchors.fill: rightIconContainer
//            source: rightIconContainer
//            color: 'white'
//        }

        Image {
            id: leftIconContainer
            width: parent.width*.078
            anchors.leftMargin: parent.width*.321
            anchors.topMargin: -parent.height*.084
            anchors.bottomMargin: parent.height*.08
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            source: "Image/Battery temperature bar-01.svg"
            fillMode: Image.PreserveAspectCrop

        }
    }



    Image {
        id: image1
        visible: false
        opacity: 0.3
        anchors.fill: parent
        source: "Image/ev-exmp.png"
        fillMode: Image.PreserveAspectFit
    }

}


