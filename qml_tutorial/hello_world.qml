import QtQuick 2.0

Rectangle {
    id: page
    width: 500
    height: 200
    color: "#00000000"

    Text {
        id: helloWorld
        text: "Hello World"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }

        states: State {
            name: "down"; when: mouseArea.pressed == true
            PropertyChanges {
                target: helloWorld
                y: 160
                color: "red"
            }
        }

        transitions: Transition {
            from: ""; to: "down"; reversible: true
            ParallelAnimation {
                NumberAnimation { properties: "y"; duration: 1500; easing.type: Easing.InOutQuad }
                ColorAnimation { duration: 1000 }
            }
        }
    }

    Grid {
        id: colorPicker
        x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
        rows: 2; columns: 3; spacing: 3

        ColorCell { cellColor: "red"; onClicked: helloWorld.color = cellColor }
        ColorCell { cellColor: "yellow"; onClicked: helloWorld.color = cellColor }
        ColorCell { cellColor: "brown"; onClicked: helloWorld.color = cellColor }
        ColorCell { cellColor: "black"; onClicked: helloWorld.color = cellColor }
        ColorCell { cellColor: "white"; onClicked: helloWorld.color = cellColor }
        ColorCell { cellColor: "blue"; onClicked: helloWorld.color = cellColor }
    }
}
