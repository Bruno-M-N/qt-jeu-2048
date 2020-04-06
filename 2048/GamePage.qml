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
    width: 640
    height: 960

    header: ToolBar {
        Label {
            text: qsTr("2048 Game Page")
            font.pixelSize: 20
            anchors.centerIn: parent
        }
    }





    Rectangle {
        id: backgroundRectangle
        x: 0
        y: 0
        color: "#faf8ef"
        anchors.fill: parent
    }

    Text {
        id: element
        x: 8
        y: 20
        color: "#776e65"
        text: qsTr("2048")
        font.bold: true
        font.family: "Arial"
        font.pixelSize: 73
    }

    TextBox {
        id: scoreBox
        x: 253
        y: 29
        scoreText: "0"
        descriptionText: "SCORE"
    }

    TextBox {
        id: bestScoreBox
        x: 400
        y: 29
        scoreText: "0"
        descriptionText: "BEST"
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
                    console.log('Cancel button was pressed');
                }
            }
        }
    }

    Text{
        id: label;
        y: 760
        text: 'Click on the board to begin'
        font.pointSize: 12
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 140
        anchors.left: parent.left
        anchors.leftMargin: 20
        verticalAlignment: Text.AlignTop
    }

    Keys.onPressed: {
        if (event.key === Qt.Key_S)
        {   label.text = 'Key S was pressed'
        }else if (event.key === Qt.Key_Left)
        {   label.text = 'Key_Left'
            cppgame.moveLeft();
        }else if (event.key === Qt.Key_Right)
        {   label.text = 'Key_Right'
            cppgame.moveRight();
        }else if (event.key === Qt.Key_Up)
        {   label.text = 'Key_Up'
            cppgame.moveUp();
        }else if (event.key === Qt.Key_Down)
        {   label.text = 'Key_Down'
            cppgame.moveDown();
        }
    }
    //https://stackoverflow.com/questions/48495571/how-to-pass-the-key-focus-to
    // -the-other-item-in-qml
    MouseArea
    {   x: 8; y: 124; width: 625; height: 625;
        onClicked: parent.forceActiveFocus()
    }

}

/*##^##
Designer {
    D{i:14;anchors_x:244}
}
##^##*/
