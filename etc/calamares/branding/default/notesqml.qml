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
            Welcome to Vincent OS 1.2! <br/> <br/>
            This release is an updated edition of the 1.1. Essentialy fixing major issues and updating softwares. <br/>
            Changelogs:
            </p>
            <h2>New features</h2>
            <ul>
                <li>Added asian language support (noto-fonts-cjk)</li>
                <li>Added Flatpak permissions settings in KDE Settings panel.</li>
                <li>Import existing .bashrc aliases to PowerShell $PROFILE.</li>
            </ul>
            <h2>Enhancements</h2>
            <ul>
                <li>Updated Core LivePatch to version 2.1.</li>
                <li>Replaced Falkon by WebSM.</li>
                <li>Replaced power-profiles-daemon by tlp for better battery use.</li>
                <li>Replaced base package by system designed for Vincent OS.</li>
                <li>Replaced hard /etc/skel content by the vincent-os-skel package for better maintenance.</li>
            </ul>
            <h2>Fixes</h2>
            <ul>
                <li>Fix problem with pgpkeys on update. Thanks to FredBezies!</li>
                <li>Fix ufw service that was not enabled by default after installation.</li>
                <li>Removed mandatory internet check when booting from ISO.</li>
                <li>Removed mkinitcpio-archiso package that still installed in the system.</li>
            </ul>
            <p>
            Hope you have a great day. <br/> <br/>
            - Florian. M, founder of v38armageddon and creator of Vincent OS
            </p>"
            ).arg(Branding.string(Branding.VersionedName))

        }
    }
}
