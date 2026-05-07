import QtQuick 2.15
import QtQuick.Layouts 1.15
import SddmComponents 2.0 as SDDM
import QtQuick.Controls 2.15

ColumnLayout {
    id: formContainer
    SDDM.TextConstants { id: textConstants }

    property int p: config.ScreenPadding == "" ? 0 : config.ScreenPadding
    property string a: config.FormPosition

    //Clock {
    //    id: clock
//
    //    Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
    //    // important
    //    Layout.preferredHeight: root.height / 3
    //    Layout.leftMargin: p != "0" ? a == "left" ? -p : a == "right" ? p : 0 : 0
    //}

    Rectangle{
        width: 330
        height: 330
        color: "transparent"
        anchors.centerIn: formContainer
            Image {
        source: "../Assets/59.png"
                // Ограничиваем размер картинки, чтобы она не вылезала за границы Rectangle


        //width: 100
        //height: 100
        //Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
        //Layout.leftMargin: p != "0" ? a == "left" ? -p : a == "right" ? p : 0 : 0
        //Layout.preferredHeight: root.height / 3
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 75

        fillMode: Image.PresserveAspectFit
       
        


    }
    }




    Input {
        id: input

        Layout.alignment: Qt.AlignVCenter
        Layout.preferredHeight: root.height / 10
        Layout.leftMargin: p != "0" ? a == "left" ? -p : a == "right" ? p : 0 : 0
        Layout.topMargin: 0
    }

    SystemButtons {
        id: systemButtons

        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
        Layout.preferredHeight: root.height / 5
        Layout.maximumHeight: root.height / 5
        Layout.leftMargin: p != "0" ? a == "left" ? -p : a == "right" ? p : 0 : 0
        
        exposedSession: input.exposeSession
    }
    
    SessionButton {
        id: sessionSelect

        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
        Layout.preferredHeight: root.height / 54
        Layout.maximumHeight: root.height / 54
        Layout.leftMargin: p != "0" ? a == "left" ? -p : a == "right" ? p : 0 : 0
    }

    VirtualKeyboardButton {
        id: virtualKeyboardButton

        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        Layout.preferredHeight: root.height / 27
        Layout.maximumHeight: root.height / 27
        Layout.leftMargin: p != "0" ? a == "left" ? -p : a == "right" ? p : 0 : 0
    }
}
