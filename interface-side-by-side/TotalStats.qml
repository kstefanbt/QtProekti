import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    header: Label {
        text: qsTr("Total Stats")
        font.pixelSize: Qt.application.font.pixelSize * 2.5
        padding: 10
    }

    Column {
        anchors.centerIn: parent
        spacing: 10
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Total statistics")
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Front page")
            onClicked: swipeView.setCurrentIndex(0);
        }
    }
}
