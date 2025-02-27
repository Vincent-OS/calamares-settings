/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   Copyright 2020, Anke Boersma <demm@kaosx.us>
 *   Copyright 2020, Adriaan de Groot <groot@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 */

/* Some Calamares internals are available to all QML modules.
 * They live in the io.calamares namespace (filled programmatically
 * by Calamares). One of the internals that is exposed in the sub-
 * namespace io.calamares.ui is the Branding object, which can be used
 * to retrieve strings and paths and colors. For a full list, see
 * the documentation in `Qml.h`.
 */
import io.calamares.ui 1.0

import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1

Item {
    width: 740
    height: 420

    Flickable {
        id: flick
        anchors.fill: parent
        contentHeight: 800

        ScrollBar.vertical: ScrollBar {
            id: fscrollbar
            width: 10
            policy: ScrollBar.AlwaysOn
        }

        TextArea {
            id: intro
            x: 1
            y: 0
            width: parent.width - fscrollbar.width
            font.pointSize: 14
            textFormat: Text.RichText
            antialiasing: true
            activeFocusOnPress: false
            wrapMode: Text.WordWrap

            text: qsTr("<h3>%1</h3>
            <p>
            Welcome to the First Release of Vincent OS Legacy! <br/> <br/>
            After 8 years of dedicated research and development. I'm thrilled to introduce the first stable version of Vincent OS Legacy. <br/>
            This release is only the beginning, and I want to express my heartfelt gratitude to everyone who belived in this project. While Vincent OS Legacy is currently a Linux distribution, I'm excited to keep pushing its boundaries. <br/> <br/>
            Welcome to Vincent OS Legacy 1.0! I hope you have a very great day. <br/> <br/>
            - Florian. M, founder of v38armageddon and creator of Vincent OS
            </p>"
            ).arg(Branding.string(Branding.VersionedName))

        }
    }
}
