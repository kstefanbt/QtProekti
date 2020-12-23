import QtQuick 2.5

Loader {
    id: loader

    focus: true

    source: "images.qml"

    onLoaded: {
        setSize(loader.item.width, loader.item.height);
        shootWithDelay(3000);
    }
}
