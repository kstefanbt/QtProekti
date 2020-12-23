import QtQuick 2.11
import QtQml 2.10

Rectangle {
    width: 120
    height: 300

    gradient: Gradient {
        GradientStop { position: 0.0; color: "#f6f6f6" }
        GradientStop { position: 1.0; color: "#d7d7d7" }
    }
    
    ListModel {
        id: actionModel
        
        ListElement {
            name: "Copenhagen"
            hello: function(value) { console.log(value + ": Copenhagen!"); }
        }
        ListElement {
            name: "Helsinki"
            hello: function(value) { console.log(value + ": Helsinki!"); }
        }
        ListElement {
            name: "Oslo"
            hello: function(value) { console.log(value + ": Oslo!"); }
        }
        ListElement {
            name: "Stockholm"
            hello: function(value) { console.log(value + ": Stockholm!"); }
        }
    }

    ListView {
        anchors.fill: parent
        anchors.margins: 20

        clip: true

        model: actionModel

        delegate: actionDelegate
        spacing: 5

        focus: true
    }

    Component {
        id: actionDelegate

        Rectangle {
            width: ListView.view.width
            height: 40

            color: "#157efb"

            Text {
                anchors.centerIn: parent
                font.pixelSize: 10
                text: name
            }
            
            MouseArea {
                anchors.fill: parent
                onClicked: hello(index);
            }
        }
    }
}
