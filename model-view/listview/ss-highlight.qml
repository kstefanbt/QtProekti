import QtQuick 2.5

Loader {
    id: loader

    focus: true

    source: "highlight.qml"

    onLoaded: {
        shorty.sendKeyPress(Qt.Key_Down);
        setSize(loader.item.width, loader.item.height);
        shoot();
    }
}
