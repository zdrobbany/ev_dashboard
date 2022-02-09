import QtQuick 2.4
import QtQuick.Controls 2.15
import QtQuick3D 1.15
import Create3D 1.0
import Quick3DAssets.Logo_Pindad_3d 1.0

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Text {
        text: qsTr("Hello Create3D")
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
            }

            PerspectiveCamera {
                id: camera
                z: 350
            }

            Model {
                id: cubeModel
                eulerRotation.y: 45
                eulerRotation.x: 30
                materials: cubeMaterial
                source: "../asset_imports/Quick3DAssets/Logo_Pindad_3d/meshes/curve.mesh"
                DefaultMaterial {
                    id: cubeMaterial
                    diffuseColor: "#4aee45"
                }
            }

            Logo_Pindad_3d {
                id: logo_Pindad_3d1
                scale.z: 100
                scale.y: 100
                scale.x: 100
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:4}D{i:1}D{i:3}D{i:5}D{i:6}D{i:8}D{i:7}D{i:9}D{i:4}D{i:2}
}
##^##*/

