PORTNAME 													= mla
DISTVERSION 											= 1.4.0
PORTREVISION 											= 0
DISTVERSIONPREFIX 							  = v
CATEGORIES 												= archivers
MAINTAINER 												= me@peeyushsingh.com
LICENSE 													= LGPL3
COMMENT 													= Multi-layer archive for encrypted and compressed archive file format
WWW 															= https://github.com/ANSSI-FR/MLA

USE_GITHUB												= yes
GH_ACCOUNT												= ANSSI-FR
GH_PROJECT												= MLA
GH_TAGNAME												= ${GIT_COMMIT}
GIT_COMMIT												= 8f4ada293ebef786729abd1ddb7fc9ecf8aa580c

USES															= cargo
CARGO_INSTALL_PATH								+= ./mlar

PLIST_FILES												+= bin/mlar

post-install:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/mlar

.sinclude "../../globals.mk"
.sinclude "Makefile.vendored"
.include <bsd.port.mk>
