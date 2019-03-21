import QtQuick 2.0
import QtQuick.Window 2.0
import QtGraphicalEffects 1.12

Window {
    id: bar
    width: 800
    height: 28
    color: "#000"
    // flags: Qt.FramelessWindowHint

    Rectangle {
        id: bg
        width: bar.width
        height: bar.height
        color: "#FFFFFF"
    }

    GaussianBlur {
        anchors.fill: bg
        source: bg
        radius: 16
        samples: 16
    }
}
