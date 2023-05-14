# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
#
# This ebuild is derived from http://gpo.zugaina.org/Overlays/ROKO__ and http://gpo.zugaina.org/Overlays/gentoo-zh
# TODO: FontPatcher is not yet included in this ebuild. Will do that later, but PR are welcome :)

EAPI=8

inherit font check-reqs

DESCRIPTION="Collection of fonts that are patched to include a high number of glyphs (icons)."
HOMEPAGE="https://nerdfonts.com"
RESTRICT="mirror"

LICENSE="MIT
		OFL-1.1
		Apache-2.0
		CC-BY-SA-4.0
		BitstreamVera
		BSD
		WTFPL-2
		Vic-Fieger-License
		UbuntuFontLicense-1.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DIRNAME=(
  3270
  Agave
  AnonymousPro
  Arimo
  AurulentSansMono
  BigBlueTerminal
  BitstreamVeraSansMono
  CascadiaCode
  CodeNewRoman
  ComicShannsMono
  Cousine
  DaddyTimeMono
  DejaVuSansMono
  DroidSansMono
  FantasqueSansMono
  FiraCode
  FiraMono
  Go-Mono
  Gohu
  Hack
  Hasklig
  HeavyData
  Hermit
  iA-Writer
  IBMPlexMono
  Inconsolata
  InconsolataGo
  InconsolataLGC
  Iosevka
  IosevkaTerm
  JetBrainsMono
  Lekton
  LiberationMono
  Lilex
  Meslo
  Monofur
  Monoid
  Mononoki
  MPlus
  NerdFontsSymbolsOnly
  Noto
  OpenDyslexic
  Overpass
  ProFont
  ProggyClean
  RobotoMono
  ShareTechMono
  SourceCodePro
  SpaceMono
  Terminus
  Tinos
  Ubuntu
  UbuntuMono
  VictorMono
)

IUSE_FLAGS=(${DIRNAME[*],,})
IUSE="${IUSE_FLAGS[*]}"

MY_URI="https://github.com/ryanoasis/${PN}/releases/download/v${PV}"
TAG_URI="https://github.com/ryanoasis/nerd-fonts/raw/v${PV}"
SRC_URI="3270?            ( "${MY_URI}/3270.zip" -> "3270-${PV}.zip" )
	agave?                  ( "${MY_URI}/Agave.zip" -> "Agave-${PV}.zip" )
	anonymouspro?           ( "${MY_URI}/AnonymousPro.zip" -> "AnonymousPro-${PV}.zip"  )
	arimo?                  ( "${MY_URI}/Arimo.zip" -> "Arimo-${PV}.zip"  )
	aurulentsansmono?       ( "${MY_URI}/AurulentSansMono.zip" -> "AurulentSansMono-${PV}.zip"  )
	bigblueterminal?        ( "${MY_URI}/BigBlueTerminal.zip" -> "BigBlueTerminal-${PV}.zip"  )
	bitstreamverasansmono?  ( "${MY_URI}/BitstreamVeraSansMono.zip" -> "BitstreamVeraSansMono-${PV}.zip"  )
	cascadiacode?           ( "${MY_URI}/CascadiaCode.zip" -> "CascadiaCode-${PV}.zip"  )
	codenewroman?           ( "${MY_URI}/CodeNewRoman.zip" -> "CodeNewRoman-${PV}.zip"  )
	comicshannsmono?        ( "${MY_URI}/ComicShannsMono.zip" -> "ComicShannsMono-${PV}.zip"  )
	cousine?                ( "${MY_URI}/Cousine.zip" -> "Cousine-${PV}.zip"  )
	daddytimemono?          ( "${MY_URI}/DaddyTimeMono.zip" -> "DaddyTimeMono-${PV}.zip"  )
	dejavusansmono?         ( "${MY_URI}/DejaVuSansMono.zip" -> "DejaVuSansMono-${PV}.zip"  )
	droidsansmono?          ( "${MY_URI}/DroidSansMono.zip" -> "DroidSansMono-${PV}.zip"  )
	fantasquesansmono?      ( "${MY_URI}/FantasqueSansMono.zip" -> "FantasqueSansMono-${PV}.zip"  )
	firacode?               ( "${MY_URI}/FiraCode.zip" -> "FiraCode-${PV}.zip"  )
	firamono?               ( "${MY_URI}/FiraMono.zip" -> "FiraMono-${PV}.zip"  )
	go-mono?                ( "${MY_URI}/Go-Mono.zip" -> "Go-Mono-${PV}.zip"  )
	gohu?                   ( "${MY_URI}/Gohu.zip" -> "Gohu-${PV}.zip"  )
	hack?                   ( "${MY_URI}/Hack.zip" -> "Hack-${PV}.zip"  )
	hasklig?                ( "${MY_URI}/Hasklig.zip" -> "Hasklig-${PV}.zip"  )
	heavydata?              ( "${MY_URI}/HeavyData.zip" -> "HeavyData-${PV}.zip"  )
	hermit?                 ( "${MY_URI}/Hermit.zip" -> "Hermit-${PV}.zip"  )
	ia-writer?              ( "${MY_URI}/iA-Writer.zip" -> "iA-Writer-${PV}.zip"  )
	ibmplexmono?            ( "${MY_URI}/IBMPlexMono.zip" -> "IBMPlexMono-${PV}.zip"  )
	inconsolata?            ( "${MY_URI}/Inconsolata.zip" -> "Inconsolata-${PV}.zip"  )
	inconsolatago?          ( "${MY_URI}/InconsolataGo.zip" -> "InconsolataGo-${PV}.zip"  )
	inconsolatalgc?         ( "${MY_URI}/InconsolataLGC.zip" -> "InconsolataLGC-${PV}.zip"  )
	iosevka?                ( "${MY_URI}/Iosevka.zip" -> "Iosevka-${PV}.zip"  )
	iosevkaterm?            ( "${MY_URI}/IosevkaTerm.zip" -> "IosevkaTerm-${PV}.zip"  )
	jetbrainsmono?          ( "${MY_URI}/JetBrainsMono.zip" -> "JetBrainsMono-${PV}.zip"  )
	lekton?                 ( "${MY_URI}/Lekton.zip" -> "Lekton-${PV}.zip"  )
	liberationmono?         ( "${MY_URI}/LiberationMono.zip" -> "LiberationMono-${PV}.zip"  )
	lilex?                  ( "${MY_URI}/Lilex.zip" -> "Lilex-${PV}.zip"  )
	meslo?                  ( "${MY_URI}/Meslo.zip" -> "Meslo-${PV}.zip"  )
	monofur?                ( "${MY_URI}/Monofur.zip" -> "Monofur-${PV}.zip"  )
	monoid?                 ( "${MY_URI}/Monoid.zip" -> "Monoid-${PV}.zip"  )
	mononoki?               ( "${MY_URI}/Mononoki.zip" -> "Mononoki-${PV}.zip"  )
	mplus?                  ( "${MY_URI}/MPlus.zip" -> "MPlus-${PV}.zip"  )
	nerdfontssymbolsonly?   ( "${MY_URI}/NerdFontsSymbolsOnly.zip" -> "NerdFontsSymbolsOnly-${PV}.zip"  "${TAG_URI}/10-nerd-font-symbols.conf" -> "10-nerd-font-symbols.conf-${PV}" )
	noto?                   ( "${MY_URI}/Noto.zip" -> "Noto-${PV}.zip"  )
	opendyslexic?           ( "${MY_URI}/OpenDyslexic.zip" -> "OpenDyslexic-${PV}.zip"  )
	overpass?               ( "${MY_URI}/Overpass.zip" -> "Overpass-${PV}.zip"  )
	profont?                ( "${MY_URI}/ProFont.zip" -> "ProFont-${PV}.zip"  )
	proggyclean?            ( "${MY_URI}/ProggyClean.zip" -> "ProggyClean-${PV}.zip"  )
	robotomono?             ( "${MY_URI}/RobotoMono.zip" -> "RobotoMono-${PV}.zip"  )
	sharetechmono?          ( "${MY_URI}/ShareTechMono.zip" -> "ShareTechMono-${PV}.zip"  )
	sourcecodepro?          ( "${MY_URI}/SourceCodePro.zip" -> "SourceCodePro-${PV}.zip"  )
	spacemono?              ( "${MY_URI}/SpaceMono.zip" -> "SpaceMono-${PV}.zip"  )
	terminus?               ( "${MY_URI}/Terminus.zip" -> "Terminus-${PV}.zip"  )
	tinos?                  ( "${MY_URI}/Tinos.zip" -> "Tinos-${PV}.zip"  )
	ubuntu?                 ( "${MY_URI}/Ubuntu.zip" -> "Ubuntu-${PV}.zip"  )
	ubuntumono?             ( "${MY_URI}/UbuntuMono.zip" -> "UbuntuMono-${PV}.zip"  )
	victormono?             ( "${MY_URI}/VictorMono.zip" -> "VictorMono-${PV}.zip"  )"

DEPEND="app-arch/unzip"
RDEPEND="media-libs/fontconfig"

CHECKREQS_DISK_BUILD="4G"
CHECKREQS_DISK_USR="4G"

S="${WORKDIR}"
FONT_CONF=(
	"${FILESDIR}"/10-nerd-font-symbols.conf
)
FONT_S=${S}

pkg_pretend() {
	check-reqs_pkg_setup
}
src_prepare() {
	if use nerdfontssymbolsonly ; then
		install -m644 "${DISTDIR}/10-nerd-font-symbols.conf-${PV}" "${S}/10-nerd-font-symbols.conf" || die
	fi

	default
}

src_install() {
	declare -A font_filetypes
	local otf_file_number ttf_file_number

	otf_file_number=$(ls ${S} | grep -i otf | wc -l)
	ttf_file_number=$(ls ${S} | grep -i ttf | wc -l)

	if [[ ${otf_file_number} != 0 ]]; then
		font_filetypes[otf]=
	fi

	if [[ ${ttf_file_number} != 0 ]]; then
		font_filetypes[ttf]=
	fi

	FONT_SUFFIX="${!font_filetypes[@]}"

	font_src_install
}

pkg_postinst() {
	einfo "Installing font-patcher via an ebuild is hard, because paths are hardcoded differently"
	einfo "in .sh files. You can still get it and use it by git cloning the nerd-font project and"
	einfo "running it from the cloned directory."
	einfo "https://github.com/ryanoasis/nerd-fonts"

	elog "You might have to enable 50-user.conf and 10-nerd-font-symbols.conf by using"
	elog "eselect fontconfig"
}
