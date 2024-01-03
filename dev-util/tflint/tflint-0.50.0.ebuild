# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-module

DESCRIPTION="A Pluggable Terraform Linter"
HOMEPAGE="https://github.com/terraform-linters/tflint"

SRC_URI="https://github.com/go-task/task/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI="https://github.com/terraform-linters/tflint/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://github.com/cova-fe/tflint-deps/releases/download/v${PV}/tflint-v${PV}-deps.tar.xz"
KEYWORDS="~amd64"
LICENSE="MPL-2.0"
SLOT="0"

DOCS=(LICENSE {README,CHANGELOG}.md)
HTML_DOCS=(docs)

MY_PN="tflint"
S="${WORKDIR}/${MY_PN}-${PV}"

src_compile() {
	mkdir -p dist
	ego build -o dist/tflint
}

src_install() {
	dobin dist/tflint
	einstalldocs
}
