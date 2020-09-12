# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Simple ebuild demo"
HOMEPAGE="https://github.com/ErikLetson/ebuildexample"
SRC_URI="https://github.com/ErikLetson/${PN}/archive/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/${PN}-${P}"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

scr_install() {
	make DESTDIR=${D} install || die "make install failed"
}
