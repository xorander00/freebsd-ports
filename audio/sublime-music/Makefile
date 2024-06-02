# TODO:
#   Create python port for this and generate plist.
#
# NOTE:
#   make -DTRYBROKEN
#   All files are in repo (e.g. sublime-music.desktop)
#   Dependencies: gtk3 glib libmpv
#   Working local installation (with pipx):
#     pyenv global 3.11.0
#     git clone https://github.com/sublime-music/sublime-music
#     pipx install --python=(which python3.11) ./sublime-music
#     rm -rf sublime-music
#   Working local installation (without pipx):
#     pyenv global 3.11.0
#     python -m venv .venv
#     source .venv/bin/activate.fish
#     git clone https://github.com/sublime-music/sublime-music gitub
#     cd github
#     pip install -r requirements.txt
#     pip install .
#     sublime-music

# Useful packages 									rclint portlint portgrep
# Testing targets 									stage stage-qa package install deinstall
# Linting targets 									check-plist check-sanity checkpatch
#
# Handbook: Options Helpers 				https://docs.freebsd.org/en/books/porters-handbook/book/#options-helpers
# Handbook: Variable shortcuts			https://docs.freebsd.org/en/books/porters-handbook/book/#options-variables
# Handbook: Variable generic 				https://docs.freebsd.org/en/books/porters-handbook/book/#options-vars
# Handbook: Install macros 					https://docs.freebsd.org/en/books/porters-handbook/book/#install-macros

BROKEN= 										WIP
PORTNAME=										sublime-music
DISTVERSION=								0.11.16
PORTREVISION=								0
DISTVERSIONPREFIX=					v
CATEGORIES=									audio
COMMENT=										A native Revel/Gonic/Subsonic/Airsonic/etc client, built using Python and GTK+.
MAINTAINER=									me@peeyushsingh.com
WWW=												https://github.com/sublime-music/sublime-music

LICENSE=										GPLv3
LICENSE_FILE= 							${WRKSRC}/LICENSE

# Example USES
# compiler gmake shebangfix localbase autotools pkgconfig pgsql mysql

USES+= 											python:3.10+ gnome
# USE_PYTHON= 								distutils autoplist
USE_GNOME= 									glib20 introspection:build

# Github
USE_GITHUB= 								yes
GH_ACCOUNT= 								sublime-music
GH_PROJECT= 								sublime-music
GH_TAGNAME= 								v0.11.16

# Dependencies lists
# FETCH_DEPENDS+=							petri:category/port
# BUILD_DEPENDS+=							petri:category/port
# RUN_DEPENDS+=								petri:category/port
# LIB_DEPENDS+=								library.so:category/port

# Users and groups
# UID_FILES+=
# USERS=											root
# GID_FILES+=
# GROUPS= 										wheel

# Packing list and substitution variables
# PORTDATA+=
# PORTDOCS+=
# PORTEXAMPLES+=
# INFO+=
# DESKTOP_ENTRIES+=

# SUB_FILES+= 								default.yaml
# SUB_LIST+=									PREFIX=${PREFIX} NAME=${PORTNAME} USER=${USER} GROUP=${GROUP} LOGDIR=/var/log/${PORTNAME} DBDIR=/var/db/${PORTNAME} RUNDIR=/var/run/${PORTNAME}
PLIST_SUB+= 								PREFIX=${PREFIX} NAME=${PORTNAME}

# Macros
# COPYTREE_BIN, COPYTREE_SHARE
# INSTALL_PROGRAM, INSTALL_KLD, INSTALL_LIB, INSTALL_SCRIPT
# INSTALL_DATA, INSTALL_MAN

# Custom target to pre-generate vendored dependencies archive for port build
# Mainly for ports that require the use of node.js/npm/yarn/pnpm
# gen-dist-deps-archive: fetch extract
	# @${ECHO_CMD} "TODO: Generate the dist archive here for uploading to MASTER_SITES or placement into /usr/prots/distfiles/..."
 
# Standard Targets with prefixes: do- | pre- | post-
# clean fetch extract patch configure build stage package install

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
