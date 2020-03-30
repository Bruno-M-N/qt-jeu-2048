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
    id: gamePage
    height: 960

    header: ToolBar {
        Label {
            text: qsTr("2048 Game Page")
            font.pixelSize: 20
            anchors.centerIn: parent
        }
    }

    Board {
        id: board
        x: 8
        y: 124
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
