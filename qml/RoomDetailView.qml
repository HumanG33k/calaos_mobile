import QtQuick 2.0

Item {

    Image {
        source: calaosApp.getPictureSized(isLandscape?
                                              "background_landscape":
                                              "background")
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

    ItemListView {
        id: listView

        model: roomModel

        width: parent.width
        height: parent.height
    }

    ScrollBar { listObject: listView }
}
