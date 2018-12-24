import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    id: wn
    visible: true
    width: 600
    height: 600
    color: "#35000000"
    flags: Qt.FramelessWindowHint

    Timer {
           interval: 0; running: true; repeat: false
           onTriggered: create_rectangle()
    }

    Rectangle {
        id: sq
        width: wn.width
        height: wn.height
        color: "#00000000"

    }

    function create_rectangle(){
        var component = Qt.createComponent("rectangle.qml");
            component.createObject(sq, {"x": 100, "y": 100});
    }

    MouseArea {
        anchors.fill: sq
        drag.target: sq
    }


}