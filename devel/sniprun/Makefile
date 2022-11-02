PORTNAME=									sniprun
DISTVERSIONPREFIX=				v
DISTVERSION=							1.2.7
PORTREVISION=							0
CATEGORIES=								devel
MAINTAINER= 							me@peeyushsingh.com
COMMENT=									A neovim plugin to run lines/blocs of code (independently of the rest of the file), supporting multiples languages
WWW=											https://github.com/michaelb/sniprun
LICENSE=									MIT
LICENSE_FILE=							${WRKSRC}/LICENSE

USE_GITHUB=								yes
GH_ACCOUNT=								michaelb
GH_PROJECT=								${PORTNAME}

USES=											cargo
RUN_DEPENDS+= 						bash:shells/bash

PLIST_FILES=							bin/${PORTNAME}

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
