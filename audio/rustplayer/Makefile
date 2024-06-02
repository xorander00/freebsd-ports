PORTNAME=										rustplayer
DISTVERSION=								2022.12.30
PORTREVISION=								0
CATEGORIES=									audio
COMMENT= 	 									An local audio player & m3u8 radio player using Rust and completely terminal gui.
MAINTAINER=									me@peeyushsingh.com
WWW=												https://github.com/Kingtous/RustPlayer

# https://docs.freebsd.org/en/books/porters-handbook/book/#licenses-license
LICENSE=										GPLv3
LICENSE_FILE= 							${WRKSRC}/LICENSE

USES+= 											cargo

# Github
USE_GITHUB= 								yes
GH_ACCOUNT= 								Kingtous
GH_PROJECT= 								RustPlayer
GH_TAGNAME= 								a369bc19ab4a8c568c73be25c5e6117e1ee5d848

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
