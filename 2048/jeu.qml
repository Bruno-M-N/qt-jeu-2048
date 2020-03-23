import QtQuick 2.12
import QtQuick.Window 2.12

/* Cette partie gère l'affichage de la grille permettant de jouer. C'est pour l'instant une grille 4x4 construite à la main.
A chaque case, il y a un rectangle avec un texte à l'intérieur. Les propriétés de couleur et de valeur du texte sont exportés.
Elles seront mis à jour en fonction de l'avancemement du jeu. Le texte contiendra la valeur auquelle sera associée une unique couleur:
2->gris
4-> beige
8-> orange clair
16-> orange foncé
32-> rose
64-> rouge
128-> jaune claire
256-> jaune
512-> jaune caca d'oie genre foncé
1024-> un peu pareil
2048->un peu pareil

===Historique===
v0.1: rédaction initiale CLS
*/



Item
{
    id: jeu
    property alias case_11Color: case_11.color
    property alias case_12Color: case_12.color
    property alias case_13Color: case_13.color
    property alias case_14Color: case_14.color
    property alias case_21Color: case_21.color
    property alias case_22Color: case_22.color
    property alias case_23Color: case_23.color
    property alias case_24Color: case_24.color
    property alias case_31Color: case_31.color
    property alias case_32Color: case_32.color
    property alias case_33Color: case_33.color
    property alias case_34Color: case_34.color
    property alias case_41Color: case_41.color
    property alias case_42Color: case_42.color
    property alias case_43Color: case_43.color
    property alias case_44Color: case_44.color
    property alias valeur_11Text: valeur_11.text
    property alias valeur_12Text: valeur_12.text
    property alias valeur_13Text: valeur_13.text
    property alias valeur_14Text: valeur_14.text
    property alias valeur_21Text: valeur_21.text
    property alias valeur_22Text: valeur_22.text
    property alias valeur_23Text: valeur_23.text
    property alias valeur_24Text: valeur_24.text
    property alias valeur_31Text: valeur_31.text
    property alias valeur_32Text: valeur_32.text
    property alias valeur_33Text: valeur_33.text
    property alias valeur_34Text: valeur_34.text
    property alias valeur_41Text: valeur_41.text
    property alias valeur_42Text: valeur_42.text
    property alias valeur_43Text: valeur_43.text
    property alias valeur_44Text: valeur_44.text
    width: 370
    height: 370

    Rectangle {
        id: grille
        x: 0
        y: 110
        width: 369
        height: 369
        color: "#5e5959"
        anchors.horizontalCenter: parent.horizontalCenter
        border.color: "#00000000"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 1

        Rectangle {
            id: case_22
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 96
            anchors.top: parent.top
            anchors.topMargin: 96

            Text {
                id: valeur_22
                text: qsTr("Text")
                font.bold: true
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_21
            x: 5
            y: 96
            width: 86
            height: 86
            color: "#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 96
            anchors.left: parent.left
            anchors.leftMargin: 5

            Text {
                id: valeur_21
                text: qsTr("Text")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_14
            x: 278
            y: 5
            width: 86
            color: "#ffffff"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 279
            anchors.left: parent.left
            anchors.leftMargin: 278
            anchors.top: parent.top
            anchors.topMargin: 5

            Text {
                id: valeur_14
                text: qsTr("Text")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_13
            x: 187
            y: 5
            width: 86
            height: 86
            color: "#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 187

            Text {
                id: valeur_13
                text: qsTr("Text")
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_12
            x: 96
            y: 5
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 96
            anchors.top: parent.top
            anchors.topMargin: 5

            Text {
                id: valeur_12
                text: qsTr("Text")
                font.bold: true
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_11
            x: 5
            y: 5
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 5

            Text {
                id: valeur_11
                text: qsTr("Text")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_23
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 187
            anchors.top: parent.top
            anchors.topMargin: 96

            Text {
                id: valeur_23
                text: qsTr("Text")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_24
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 278
            anchors.top: parent.top
            anchors.topMargin: 96

            Text {
                id: valeur_24
                text: qsTr("Text")
                anchors.fill: parent
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_31
            width: 86
            height: 86
            color: "#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 187
            anchors.left: parent.left
            anchors.leftMargin: 5

            Text {
                id: valeur_31
                text: qsTr("Text")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                anchors.fill: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_32
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 96
            anchors.top: parent.top
            anchors.topMargin: 187

            Text {
                id: valeur_32
                text: qsTr("Text")
                anchors.fill: parent
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_33
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 187
            anchors.top: parent.top
            anchors.topMargin: 187

            Text {
                id: valeur_33
                text: qsTr("Text")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_34
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 278
            anchors.top: parent.top
            anchors.topMargin: 187

            Text {
                id: valeur_34
                text: qsTr("Text")
                font.bold: true
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_41
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 278

            Text {
                id: valeur_41
                text: qsTr("Text")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_42
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 96
            anchors.top: parent.top
            anchors.topMargin: 278

            Text {
                id: valeur_42
                text: qsTr("Text")
                anchors.fill: parent
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_43
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 187
            anchors.top: parent.top
            anchors.topMargin: 278

            Text {
                id: valeur_43
                text: qsTr("Text")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                anchors.fill: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: case_44
            width: 86
            height: 86
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 278
            anchors.top: parent.top
            anchors.topMargin: 278

            Text {
                id: valeur_44
                text: qsTr("Text")
                anchors.fill: parent
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30
            }
        }






    }

}

/*##^##
Designer {
    D{i:3;anchors_x:31;anchors_y:36}D{i:2;anchors_x:110;anchors_y:118}D{i:5;anchors_x:31;anchors_y:36}
D{i:7;anchors_x:31;anchors_y:35}D{i:6;anchors_height:86;anchors_width:86}D{i:9;anchors_x:31;anchors_y:36}
D{i:11;anchors_x:31;anchors_y:36}D{i:13;anchors_x:31;anchors_y:36}D{i:15;anchors_x:31;anchors_y:36}
D{i:14;anchors_x:144;anchors_y:202}D{i:17;anchors_x:31;anchors_y:36}D{i:16;anchors_height:86;anchors_width:86;anchors_x:61;anchors_y:231}
D{i:19;anchors_x:31;anchors_y:43}D{i:18;anchors_x:39;anchors_y:218}D{i:21;anchors_x:31;anchors_y:36}
D{i:20;anchors_x:130;anchors_y:210}D{i:23;anchors_x:31;anchors_y:36}D{i:22;anchors_x:226;anchors_y:206}
D{i:25;anchors_x:31;anchors_y:36}D{i:24;anchors_x:332;anchors_y:212}D{i:27;anchors_x:31;anchors_y:36}
D{i:26;anchors_x:52;anchors_y:312}D{i:29;anchors_x:31;anchors_y:36}D{i:28;anchors_x:194;anchors_y:299}
D{i:31;anchors_x:31;anchors_y:36}D{i:30;anchors_x:227;anchors_y:308}D{i:33;anchors_x:26;anchors_y:36}
D{i:32;anchors_height:86;anchors_x:313;anchors_y:306}D{i:1;anchors_width:640;anchors_x:0}
}
##^##*/
