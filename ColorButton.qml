import QtQuick

Rectangle {
    id: coloredRectangle
    width: 400
    height: 100
    color: "red"
    property alias color: blueRectangle.color

    Rectangle {
        id: blueRectangle
        width: 50
        height: 50
        color: "#1234ff"
    }

    Component.onCompleted: {
        console.log("1" + color)
        console.log("2" + coloredRectangle.color)
       /* setInternalColor()
        console.log("3" + coloredRectangle.color)
        coloredRectangle.color = "#00ff00"
        console.log("4" + coloredRectangle.color)
       */
}

    function setInternalColor() {
        color = "pink"
    }
}
