# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KMNAME="${PN}-framework"
inherit kde5

DESCRIPTION="Plasma framework"
LICENSE="LGPL-2+"
KEYWORDS=""
IUSE="opengl X"

RDEPEND="
	$(add_frameworks_dep kactivities)
	$(add_frameworks_dep karchive)
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kconfigwidgets)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kdbusaddons)
	$(add_frameworks_dep kdeclarative)
	$(add_frameworks_dep kglobalaccel)
	$(add_frameworks_dep kguiaddons)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kiconthemes)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep kservice)
	$(add_frameworks_dep kwindowsystem)
	$(add_frameworks_dep kxmlgui)
	dev-qt/qtdbus:5
	dev-qt/qtdeclarative:5
	dev-qt/qtgui:5
	dev-qt/qtquickcontrols:5
	dev-qt/qtscript:5
	dev-qt/qtsql:5
	dev-qt/qtsvg:5
	dev-qt/qtwidgets:5
	dev-qt/qtxml:5
	X? (
		dev-qt/qtx11extras:5
		x11-libs/libX11
		x11-libs/libxcb
	)
"
DEPEND="${RDEPEND}
	dev-qt/qtquick1:5
	opengl? ( virtual/opengl )
	X? ( x11-proto/xproto )
"

src_configure() {
	local mycmakeargs=(
		-DSYSCONF_INSTALL_DIR="${EPREFIX}"/etc
		$(cmake-utils_use_find_package opengl OpenGL)
		$(cmake-utils_use_find_package X X11)
		$(cmake-utils_use_find_package X XCB)
	)

	kde5_src_configure
}
