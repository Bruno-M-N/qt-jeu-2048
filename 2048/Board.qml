import QtQuick 2.0

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
v0.2: ajout commentaire CLS 24/03/2020
v0.1: rédaction initiale BMR 23/03/2020
*/

Item {
    id: grid
    width: 625
    height: 625

    Rectangle {
        id: gridBackground
        x: 0
        y: 0
        width: 625
        height: 625
        color: "#bbada0"
        radius: 10
        border.color: "#00000000"

        Rectangle {
            id: rectInsideGrid00
            x: 19
            y: 18
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid01
            x: 170
            y: 18
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid02
            x: 322
            y: 18
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid03
            x: 473
            y: 18
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid10
            x: 19
            y: 170
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid11
            x: 170
            y: 170
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid12
            x: 322
            y: 170
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid13
            x: 473
            y: 170
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid20
            x: 19
            y: 321
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid21
            x: 170
            y: 321
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid22
            x: 322
            y: 321
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid23
            x: 473
            y: 321
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid30
            x: 19
            y: 473
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid31
            x: 170
            y: 473
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid32
            x: 322
            y: 473
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }

        Rectangle {
            id: rectInsideGrid33
            x: 473
            y: 473
            width: 134
            height: 134
            color: "#cdc0b4"
            radius: 10
            border.color: "#00000000"
        }
    }

}


