PORTNAME= 												squawk
PORTVERSION= 											0.16.0
DISTVERSIONPREFIX=								v
CATEGORIES=												databases
MAINTAINER=												me@peeyushsingh.com
COMMENT=													Linter for PostgreSQL, focused on migrations
LICENSE=													GPLv3
LICENSE_FILE=											${WRKSRC}/LICENSE
WWW= 															https://github.com/sbdchd/squawk

USE_GITHUB= 											yes
GH_ACCOUNT=												sbdchd

USES=															compiler cargo localbase ssl pgsql:14+ pkgconfig

PLIST_FILES=											bin/squawk

.include "Makefile.vendored"
.include <bsd.port.mk>
