# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils flag-o-matic

MY_P="sdsl-lite-${PV}"

DESCRIPTION="A powerful and flexible C++11 library implementing succinct data structures"
HOMEPAGE="https://github.com/simongog/sdsl-lite"
SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="2"
KEYWORDS="amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="
  dev-cpp/gtest 
  dev-libs/libdivsufsort[64bit]"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"

PATCHES=(
	"${FILESDIR}/use_shared_libraries.patch"
)


