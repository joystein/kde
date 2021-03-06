# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit kde5-meta-pkg

DESCRIPTION="KDE WebDev - merge this to pull in all kdewebdev-derived packages"
KEYWORDS=""
IUSE=""

RDEPEND="
	$(add_kdeapps_dep kfilereplace)
	$(add_kdeapps_dep kimagemapeditor)
	$(add_kdeapps_dep klinkstatus)
	$(add_kdeapps_dep kommander)
"
