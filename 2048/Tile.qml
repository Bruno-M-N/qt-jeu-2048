import QtQuick 2.0

Item {
    id: tile
    width: 134
    height: 134
    property alias tileColor: tileArea.color
    property alias tileTextText: tileText.text
    property alias tileTextColor: tileText.color

    Rectangle {
        id: tileArea
        x: 0
        y: 0
        width: 134
        height: 134
        color: "#eee4da"
        radius: 10
        border.color: "#00000000"

        Text {
            id: tileText
            x: 0
            y: 0
            width: 134
            height: 134
            color: "#222222"
            text: qsTr("2")
            font.pixelSize: 60
            font.bold: true
            font.family: "Arial"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

}

