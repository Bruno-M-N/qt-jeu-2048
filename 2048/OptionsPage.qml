// The code for the contact list is into ContactPage.qml. It's a good idea to
//do this as soon as you have a general idea of which screens your application
//will contain. Doing so not only makes your code easier to read, but ensures
//that items are only instantiated from a given component when completely
//necessary, reducing memory usage.

//First, import the Qt Quick module. This gives us access to graphical
//primitives such as Item, Rectangle, Text, and so on. For the full list of
//types, see the Qt Quick QML Types documentation.
import QtQuick 2.12

//Next, import the Qt Quick Controls module. Amongst other things, this provides
//access to ApplicationWindow, which will replace the existing root type Window
import QtQuick.Controls 2.12

Page {
    id: optionsPage
    width: 640
    height: 960

    header: ToolBar {
        Label {
            text: qsTr("2048 Options Page")
            font.pixelSize: 20
            anchors.centerIn: parent
        }
    }

    Board {
        id: board
        x: 8
        y: 124

        Tile {
            id: tile
            x: 473
            y: 18
        }

        Tile {
            id: tile1
            x: 322
            y: 18
            tileColor: "#eee4da"
            tileTextText: qsTr("2")
        }

        Tile {
            id: tile2
            x: 170
            y: 18
            tileColor: "#ede0c8"
            tileTextText: "4"
        }

        Tile {
            id: tile3
            x: 19
            y: 18
            tileTextColor: "#f9f6f2"
            tileTextText: "8"
            tileColor: "#f2b179"
        }

        Tile {
            id: tile8
            x: 19
            y: 170
            tileColor: "#f59563"
            tileTextText: "16"
            tileTextColor: "#f9f6f2"
        }

        Tile {
            id: tile7
            x: 170
            y: 170
            tileColor: "#f67c5f"
            tileTextText: "32"
            tileTextColor: "#f9f6f2"
        }

        Tile {
            id: tile9
            x: 19
            y: 321
            tileColor: "#f65e3b"
            tileTextText: "64"
            tileTextColor: "#f9f6f2"
        }
    }

    Button {
        id: buttonBack
        x: 400
        y: 830
        text: qsTr("Back")

        MouseArea {
            id: mouseAreaBack
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked: {
                if (mouse.button == Qt.RightButton |
                        mouse.button == Qt.LeftButton )
                {
                    //On affiche la fenêtre option
                    stackView.push("HomePage.qml");
                    cppPageManagement.pageChanged("Hello: Home Page");
                }
            }
        }
    }

    Button {
        id: buttonSave
        x: 280
        y: 830
        text: qsTr("Save")
        MouseArea {
            id: mouseAreaSave
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked: {
                if (mouse.button == Qt.RightButton |
                        mouse.button == Qt.LeftButton )
                {
                    //On affiche la fenêtre option
                    stackView.push("HomePage.qml");
                    cppPageManagement.pageChanged("Hello: Home Page");
                }
            }
        }
    }

    Button {
        id: buttonCancel
        x: 520
        y: 830
        text: qsTr("Cancel")
        MouseArea {
            id: mouseAreaCancel
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked: {
                if (mouse.button == Qt.RightButton |
                        mouse.button == Qt.LeftButton )
                {
                    //On affiche la fenêtre option
                    stackView.push("HomePage.qml");
                    cppPageManagement.pageChanged("Hello: Home Page");
                }
            }
        }
    }
}
