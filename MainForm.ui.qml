import QtQuick 2.6
import QtQuick.Controls 2.2

Rectangle {
    property alias mouseArea: mouseArea
    property alias textEdit: textEdit

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    TextEdit {
        id: textEdit
        text: qsTr("Enter some text...")
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Rectangle {
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#00000000"
                }

                GradientStop {
                    position: 0.707
                    color: "#00000000"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
            }
            anchors.fill: parent
            anchors.margins: -10
            border.width: 1
        }
    }
}
