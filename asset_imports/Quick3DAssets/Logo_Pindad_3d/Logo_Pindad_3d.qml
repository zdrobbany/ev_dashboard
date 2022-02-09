import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: logo_Pindad_3d_obj

    Model {
        id: curve
        source: "meshes/curve.mesh"

        DefaultMaterial {
            id: material_006_material
            diffuseColor: "#ff000037"
        }
        materials: [
            material_006_material
        ]
    }

    Model {
        id: curve_001
        source: "meshes/curve_001.mesh"

        DefaultMaterial {
            id: material_007_material
            diffuseColor: "#ffa66d0a"
        }
        materials: [
            material_007_material
        ]
    }

    Model {
        id: curve_002
        source: "meshes/curve_002.mesh"

        DefaultMaterial {
            id: material_005_material
        }
        materials: [
            material_005_material
        ]
    }

    Model {
        id: curve_003
        source: "meshes/curve_003.mesh"
        materials: [
            material_005_material
        ]
    }

    Model {
        id: curve_004
        source: "meshes/curve_004.mesh"

        DefaultMaterial {
            id: material_004_material
            diffuseColor: "#ffcccccc"
        }
        materials: [
            material_004_material
        ]
    }
}
