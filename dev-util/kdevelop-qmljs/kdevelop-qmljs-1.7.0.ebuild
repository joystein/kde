# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KDEBASE="kdevelop"
KMNAME="kdev-qmljs"
KDE_LINGUAS="bs ca ca@valencia da de el en_GB es et fi fr gl it kk nb nds nl pl
pt pt_BR ru sl sv uk zh_CN zh_TW"
MY_P="${KMNAME}-${PV}"

inherit kde4-base

DESCRIPTION="QML and javascrip plugin for KDevelop 4"
LICENSE="GPL-2 LGPL-2"
IUSE="debug"
SRC_URI="mirror://kde/stable/kdevelop/${KMNAME}/${PV}/src/${MY_P}.tar.xz"
KEYWORDS="~amd64 ~x86"
S=${WORKDIR}/${MY_P}

COMMON_DEPEND=">=dev-util/kdevplatform-${PV}:4"

RDEPEND="
    ${COMMON_DEPEND}
    dev-util/kdevelop:4
"
