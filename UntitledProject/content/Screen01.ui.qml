

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import UntitledProject
import QtQuick.Studio.Components 1.0
import QtQuick.Timeline
import QtQuick.Shapes
import QtQuick.Studio.LogicHelper

Rectangle {
    width: 640
    height: 640
    color: "#f9161616"

    ArcItem {
        id: arc
        x: 120
        y: 120
        width: 400
        height: 400
        strokeWidth: 7
        begin: -120
        end: 120
        fillColor: "#af000000"

        Text {
            id: text1
            x: 29
            y: 253
            color: "#ffffff"
            text: qsTr("0")
            font.pixelSize: 20
            font.weight: Font.Bold
            font.bold: true
        }

        Text {
            id: text2
            x: 19
            y: 180
            color: "#ffffff"
            text: qsTr("20")
            font.pixelSize: 20
            font.bold: true
            font.weight: Font.Bold
        }

        Text {
            id: text3
            x: 50
            y: 98
            color: "#ffffff"
            text: qsTr("40")
            font.pixelSize: 20
            font.bold: true
            font.weight: Font.Bold
        }

        Text {
            id: text4
            x: 108
            y: 41
            color: "#ffffff"
            text: qsTr("60")
            font.pixelSize: 20
            font.bold: true
            font.weight: Font.Bold
        }

        Text {
            id: text5
            x: 189
            y: 18
            color: "#ffffff"
            text: qsTr("80")
            font.pixelSize: 20
            font.bold: true
            font.weight: Font.Bold
        }

        Text {
            id: text6
            x: 272
            y: 41
            color: "#ffffff"
            text: qsTr("100")
            font.pixelSize: 20
            font.bold: true
            font.weight: Font.Bold
        }

        Text {
            id: text7
            x: 322
            y: 98
            color: "#ffffff"
            text: qsTr("120")
            font.pixelSize: 20
            font.bold: true
            font.weight: Font.Bold
        }

        Text {
            id: text8
            x: 352
            y: 187
            color: "#ffffff"
            text: qsTr("140")
            font.pixelSize: 20
            font.bold: true
            font.weight: Font.Bold
        }

        Text {
            id: text9
            x: 333
            y: 262
            color: "#ffffff"
            text: qsTr("160")
            font.pixelSize: 20
            font.bold: true
            font.weight: Font.Bold
        }

        Rectangle {
            id: rot
            x: 100
            y: 106
            width: 200
            height: 200
            color: "#02ffffff"
            //  <span >    </span><span style=" font-style:italic;">xPositionAnimation</span>.start();
            Rectangle {
                id: rectangle
                x: 34
                y: 79
                width: 7
                height: 181
                color: "#a90e0e"
                transformOrigin: Item.Right
                rotation: 48.95
            }
        }

        //PropertyAnimation
        //        NumberAnimation {
        //            target: rot
        //            property: "rotation"
        //            from: 0
        //            to: 250
        //            duration: 5000
        //            running: true
        //        }
        SequentialAnimation {
            running: true
            loops: Animation.Infinite

            NumberAnimation {
                target: rot
                property: "rotation"
                from: 0
                to: 250
                duration: 5000
                // running: true
            }

            NumberAnimation {
                target: rot
                property: "rotation"
                from: 250
                to: 0
                duration: 5000
                //running: true
            }
        }

        AnimatedImage {
            id: animatedImage
            x: 30
            y: 340
            width: 179
            height: 151
            source: "../../../Desktop/QtImg/check-engine-critical.gif"
            playing: false
            speed: 1
            layer.samples: 2
        }

        AnimatedImage {
            id: animatedImage1
            x: 289
            y: 381
            width: 51
            height: 54
            source: "../../../Desktop/QtImg/fuelIconOff.png"
            speed: 2
            playing: true
        }

        Text {
            id: text10
            x: 168
            y: 245
            color: "#ffffff"
            text: qsTr("km/h")
            font.pixelSize: 26
            font.bold: true
            font.weight: Font.Bold
        }
    }
}



