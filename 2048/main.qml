import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: fenetre_demarrage
    visible: true
    width: 640
    height: 480
    color: "#c7c4c4"
    title: qsTr("2048")

    Rectangle {
        id: en_tete
        height: 105
        color: "#ffffff"
        anchors.right: parent.right
        anchors.rightMargin: 5
        border.color: "#00000000"
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 5

        Image {
            id: logo_ecl
            width: 100
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 0
            source: "logo_ecl_carre_q.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: titre
            x: 279
            y: 43
            width: 400
            height: 100
            text: qsTr("2048")
            style: Text.Normal
            font.family: "Tahoma"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 100
        }

        Image {
            id: image
            x: 512
            width: 110
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 5
            source: "epsa2.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Rectangle {
        id: bouton_play
        x: 220
        y: 158
        width: 200
        height: 100
        color: "#93a5cf"
        border.color: "#000000"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#93a5cf"
            }

            GradientStop {
                position: 1
                color: "#e4efe9"
            }
        }

        Text {
            id: element
            text: qsTr("Jouer")
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 35
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked: {
                if (mouse.button == Qt.RightButton | mouse.button == Qt.LeftButton )
                {
                    //On affiche la fenêtre jeu
                }
            }
        }
    }

    Rectangle {
        id: bouton_option
        x: 220
        y: 314
        width: 200
        height: 100
        color: "#93a5cf"
        border.color: "#000000"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#93a5cf"
            }

            GradientStop {
                position: 1
                color: "#e4efe9"
            }
        }
        Text {
            id: element1
            text: qsTr("Options")
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 35
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
        }

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked: {
                if (mouse.button == Qt.RightButton | mouse.button == Qt.LeftButton )
                {
                    //On affiche la fenêtre option
                }
            }
        }

    }
}
