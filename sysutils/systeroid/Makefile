PORTNAME= 												systeroid
DISTVERSION= 											0.3.0
DISTVERSIONPREFIX=								v
CATEGORIES=												sysutils
MAINTAINER=												me@peeyushsingh.com
COMMENT=													A more powerful alternative to sysctl(8) with a terminal user interface
LICENSE=													APACHE20
LICENSE_FILE=											${WRKSRC}/LICENSE-APACHE
WWW=  														https://github.com/orhun/systeroid

USE_GITHUB= 											yes
GH_ACCOUNT=												orhun
GH_PROJECT= 											${PORTNAME}
GH_TAGNAME= 											${DISTVERSIONFULL}

USES=															cargo
CARGO_INSTALL=										no

LIB_DEPENDS+= 										libxcb.so:x11/libxcb

PLIST_FILES=											bin/systeroid bin/systeroid-tui

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/target/x86_64-unknown-freebsd/release/systeroid ${STAGEDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIR}/target/x86_64-unknown-freebsd/release/systeroid-tui ${STAGEDIR}${PREFIX}/bin

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
