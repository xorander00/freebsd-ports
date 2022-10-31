PORTNAME= 												gobang
DISTVERSION=											0.1.0-alpha.5
DISTVERSIONPREFIX=								v
CATEGORIES=												databases
MAINTAINER=												me@peeyushsingh.com
COMMENT=													TUI client for SQL databases
LICENSE=													MIT
LICENSE_FILE=											${WRKSRC}/LICENSE
WWW=															http://github.com/TaKO8Ki/gobang

USE_GITHUB= 											yes
GH_ACCOUNT=												TaKO8Ki

USES=															cargo

PLIST_FILES=											bin/gobang

post-stage:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/gobang

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
