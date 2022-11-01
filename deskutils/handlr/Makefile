PORTNAME= 												handlr
PORTVERSION= 											0.6.5
PORTREVISION= 										1
CATEGORIES=												deskutils
MAINTAINER=												me@peeyushsingh.com
COMMENT=													A better xdg-util
LICENSE=													MIT
LICENSE_FILE=											${WRKSRC}/LICENSE
WWW=															https://github.com/chmln/handlr

USE_GITHUB= 											yes
GH_ACCOUNT=												chmln
GH_PROJECT=												${PORTNAME}
GH_TAGNAME=												90e78ba92d0355cb523abf268858f3123fd81238

USES=															cargo

PLIST_FILES=											bin/handlr

post-stage:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/handlr

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
