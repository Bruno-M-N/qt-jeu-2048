//First, import the Qt Quick module. This gives us access to graphical
// primitives such as Item, Rectangle, Text, and so on. For the full list of
// types, see the Qt Quick QML Types documentation.
import QtQuick 2.12

//Next, import the Qt Quick Controls module. Amongst other things, this provides
//access to ApplicationWindow, which will replace the existing root type Window
import QtQuick.Controls 2.12

//Window {
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")
//}

// ApplicationWindow is a Window with some added convenience for creating a
// header and a footer. It also provides the foundation for popups and supports
// some basic styling, such as the background color.
ApplicationWindow {
    id: window
    width: 640
    height: 960
    visible: true
    // StackView accepts items, components and URLs.
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: HomePage {}//HomePage {}

        pushEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to:1
                duration: 100
            }
        }
        pushExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to:0
                duration: 100
            }
        }
    }
}

//ApplicationWindow {
//    title: qsTr("Hello World")
//    width: 640
//    height: 854//480
//    visible: true

//    StackView {
//        id: stack
//        initialItem: mainView
//        anchors.fill: parent

//        pushEnter: Transition {
//                PropertyAnimation {
//                    property: "opacity"
//                    from: 0
//                    to:1
//                    duration: 200
//                }
//            }
//            pushExit: Transition {
//                PropertyAnimation {
//                    property: "opacity"
//                    from: 1
//                    to:0
//                    duration: 200
//                }
//            }
//            popEnter: Transition {
//                PropertyAnimation {
//                    property: "opacity"
//                    from: 0
//                    to:1
//                    duration: 200
//                }
//            }
//            popExit: Transition {
//                PropertyAnimation {
//                    property: "opacity"
//                    from: 1
//                    to:0
//                    duration: 200
//                }
//            }


//        }

//    Component {
//        id: mainView

//        Row {
//            spacing: 10

//            Button {
//                text: "Push"
//                onClicked: stack.push(mainView)
//            }
//            Button {
//                text: "Pop"
//                enabled: stack.depth > 1
//                onClicked: stack.pop()

//            }
//            Text {
//                text: stack.depth
//            }
//            Board {
//                id: board
//                x: 8
//                y: 124
//            }
//        }
//    }
//}

//Window {
//    id: fenetre_demarrage
//    visible: true
//    width: 640
//    height: 480
//    color: "#c7c4c4"
//    title: qsTr("2048")

//    Rectangle {
//        id: en_tete
//        height: 105
//        color: "#ffffff"
//        anchors.right: parent.right
//        anchors.rightMargin: 5
//        border.color: "#00000000"
//        anchors.top: parent.top
//        anchors.topMargin: 5
//        anchors.left: parent.left
//        anchors.leftMargin: 5

//        Image {
//            id: logo_ecl
//            width: 100
//            height: 100
//            anchors.verticalCenter: parent.verticalCenter
//            anchors.left: parent.left
//            anchors.leftMargin: 0
//            source: "logo_ecl_carre_q.png"
//            fillMode: Image.PreserveAspectFit
//        }

//        Text {
//            id: titre
//            x: 279
//            y: 43
//            width: 400
//            height: 100
//            text: qsTr("2048")
//            style: Text.Normal
//            font.family: "Tahoma"
//            verticalAlignment: Text.AlignVCenter
//            horizontalAlignment: Text.AlignHCenter
//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.verticalCenter: parent.verticalCenter
//            font.pixelSize: 100
//        }

//        Image {
//            id: image
//            x: 512
//            width: 110
//            height: 100
//            anchors.verticalCenter: parent.verticalCenter
//            anchors.right: parent.right
//            anchors.rightMargin: 5
//            source: "epsa2.png"
//            fillMode: Image.PreserveAspectFit
//        }
//    }

//    Rectangle {
//        id: bouton_play
//        x: 220
//        y: 158
//        width: 200
//        height: 100
//        color: "#93a5cf"
//        border.color: "#000000"
//        gradient: Gradient {
//            GradientStop {
//                position: 0
//                color: "#93a5cf"
//            }

//            GradientStop {
//                position: 1
//                color: "#e4efe9"
//            }
//        }

//        Text {
//            id: element
//            text: qsTr("Jouer")
//            font.bold: true
//            verticalAlignment: Text.AlignVCenter
//            horizontalAlignment: Text.AlignHCenter
//            anchors.fill: parent
//            font.pixelSize: 35
//        }

//        MouseArea {
//            id: mouseArea
//            anchors.fill: parent
//            acceptedButtons: Qt.LeftButton | Qt.RightButton
//            onClicked: {
//                if (mouse.button == Qt.RightButton | mouse.button == Qt.LeftButton )
//                {
//                    //On affiche la fenêtre jeu
//                }
//            }
//        }
//    }

//    Rectangle {
//        id: bouton_option
//        x: 220
//        y: 314
//        width: 200
//        height: 100
//        color: "#93a5cf"
//        border.color: "#000000"
//        gradient: Gradient {
//            GradientStop {
//                position: 0
//                color: "#93a5cf"
//            }

//            GradientStop {
//                position: 1
//                color: "#e4efe9"
//            }
//        }
//        Text {
//            id: element1
//            text: qsTr("Options")
//            font.bold: true
//            verticalAlignment: Text.AlignVCenter
//            font.pixelSize: 35
//            horizontalAlignment: Text.AlignHCenter
//            anchors.fill: parent
//        }

//        MouseArea {
//            id: mouseArea1
//            anchors.fill: parent
//            acceptedButtons: Qt.LeftButton | Qt.RightButton
//            onClicked: {
//                if (mouse.button == Qt.RightButton | mouse.button == Qt.LeftButton )
//                {
//                    //On affiche la fenêtre option
//                }
//            }
//        }

//    }
//}
