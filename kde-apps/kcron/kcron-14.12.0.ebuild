# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KDE_HANDBOOK="optional"
inherit kde4-base

DESCRIPTION="KDE Task Scheduler"
KEYWORDS=" ~amd64 ~x86"
IUSE="debug"

RDEPEND="!prefix? ( virtual/cron )"
