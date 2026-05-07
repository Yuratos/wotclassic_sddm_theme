    Button {
        id: control
        text: "Войти!"
        font.family: customFont.name
        font.pointSize: 16
        width: 256
        height: 128


        background: Image {
            source: control.pressed ? "../Assets/496.png" : 
                    (control.hovered ? "../Assets/408.png" : "../Assets/398.png")
            anchors.fill: parent
        }
    }