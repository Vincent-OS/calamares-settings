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
            Welcome to Vincent OS 1.1, the first Stable Release <br/> <br/>
            This release is an updated edition of the 1.0 Open Beta. Essentialy fixing major issues and updating softwares. <br/>
            Changelogs:
            </p>
            <ul>
                <li>Fixing a issue when installing Vincent OS would fail if booted in RAM.</li>
                <li>Fixing a issue when the live user named 'user' is not removed in the installed system.</li>
                <li>Fixing a issue when NetworkManager is not enabled by default on LiveCD.</li>
                <li>Fixing a issue when the /etc/pacman.d/gnupg is mounted on tmpfs, unabling to update the system without 'pacman-key --init'.</li>
                <li>Updated Core LivePatch to version 2.0.</li>
                <li>Replaced GNOME Web by Falkon.</li>
                <li>Added GRUB recovery mode boot entry.</li>
                <li>Added Installation mode boot entry for ISO.</li>
                <li>Optimization of systemd services.</li>
                <li>Adding ParallelDownload on /etc/pacman.conf, default value is 5.</li>
                <li>Relisting pacman repositories and adding fallback servers in separate files for Vincent OS repositories.</li>
            </ul>
            <p>
            Hope you have a great day. <br/> <br/>
            - Florian. M, founder of v38armageddon and creator of Vincent OS
            </p>"
            ).arg(Branding.string(Branding.VersionedName))

        }
    }
}
