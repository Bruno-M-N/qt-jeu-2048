import QtQuick 2.0

Item {
    id: textBox
    height: 69
    width: 80

    property alias textBoxWidth: textBoxArea.width
    property alias descriptionText: description.text
    property alias scoreText: score.text


    Rectangle {
        id: textBoxArea
        //width: 80
        color: "#bbada0"
        radius: 10
        anchors.fill: parent
        border.color: "#00000000"

        Text {
            id: description
            height: 32
            color: "#c5cbd1"
            text: qsTr("DESCRIPTION")
            fontSizeMode: Text.HorizontalFit
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.family: "Tahoma"
            font.pixelSize: 12
        }

        Text {
            id: score
            y: 34
            height: 35
            color: "#ffffff"
            text: qsTr("80856")
            fontSizeMode: Text.HorizontalFit
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            font.pixelSize: 38
            font.bold: true
            font.family: "Arial"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

    }

}


/*##^##
Designer {
    D{i:2;anchors_width:134;anchors_x:0;anchors_y:0}D{i:3;anchors_height:35;anchors_width:134;anchors_x:0;anchors_y:34}
D{i:1;anchors_height:69;anchors_width:134;anchors_x:0;anchors_y:0}
}
##^##*/
