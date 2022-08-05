import QtQuick 2.12
import QtQuick.Controls 2.0
import QtQuick.Window 2.12

Window {
    id: app
    visible: true
    visibility: "Maximized"
    width: app.fs*20
    height: app.fs*10
    title: qsTr("Qmloader: Información")
    property int fs: Screen.width*0.02
    Flickable{
        id: flk
        width: app.width
        height: app.height
        contentWidth: width
        contentHeight: col.height*1.2
        Column{
            id: col
            spacing: app.fs
            Text{
                width: app.width-app.fs*2
                text: '<b>Cómo ejecutar Qmloader para carpeta QML:</b><br/>./qmloader -folder=/ruta/a/carpeta/qml<br><b>Nota:</b>En la carpeta indicada tiene que existir el archivo main.qml'
                font.pixelSize: app.fs*0.5
                wrapMode: Text.WordWrap
            }
            Button{
                text: 'Ir al Repositorio de Qmloader'
                onClicked: Qt.openUrlExternally('https://github.com/nextsigner/qmloader')
            }
            Text{
                width: app.width-app.fs*2
                text: '<b>Contacto:</b><br/><b>E-Mail:</b>nextsigner@gmail.com<br/><b>Whatsapp:</b>+54 11 3802 4370'
                font.pixelSize: app.fs*0.5
                wrapMode: Text.WordWrap
            }
        }
    }
    Shortcut{
        sequence: 'Esc'
        onActivated: Qt.quit()
    }
}
