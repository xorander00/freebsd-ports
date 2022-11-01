PORTNAME= 												reshape
PORTVERSION= 											0.6.1
PORTREVISION= 										1
DISTVERSIONPREFIX=								v
CATEGORIES=												databases
MAINTAINER=												me@peeyushsingh.com
COMMENT=													SQL migration tool for PostgreSQL with a focus on zero-downtime
LICENSE=													MIT
LICENSE_FILE=											${WRKSRC}/LICENSE
WWW= 															http://github.com/fabianlindfors/reshape

USE_GITHUB= 											yes
GH_ACCOUNT=												fabianlindfors

USES=															cargo

PLIST_FILES=											bin/reshape

post-stage:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/reshape

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
