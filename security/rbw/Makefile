PORTNAME= 												rbw
PORTVERSION=											1.4.3
PORTREVISION= 										1
CATEGORIES=												security
MAINTAINER=												me@peeyushsingh.com
COMMENT=													Unofficial BitWarden client
LICENSE=													MIT
LICENSE_FILE=											${WRKSRC}/LICENSE

USE_GITHUB= 											yes
GH_ACCOUNT=												doy

USES=															cargo

PLIST_FILES=											bin/rbw bin/rbw-agent

post-stage:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/rbw
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/rbw-agent

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
