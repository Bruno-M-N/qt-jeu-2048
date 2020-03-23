import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("2048")

    Rectangle {
        id: en_tete
        height: 100
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
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
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
            font.strikeout: false
            style: Text.Normal
            font.family: "Tahoma"
            font.italic: false
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
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 8
            source: "epsa2.png"
            fillMode: Image.PreserveAspectFit
        }
    }
}
