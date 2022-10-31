PORTNAME= 												postgres_migrator
PORTVERSION= 											0.5.3
DISTVERSIONPREFIX=								v
CATEGORIES=												databases
MAINTAINER=												me@peeyushsingh.com
COMMENT=													A postgres migration generator and runner that uses raw declarative sql
LICENSE=													MIT
LICENSE_FILE=											${WRKSRC}/LICENSE
WWW= 															http://github.com/blainehansen/postgres_migrator

USE_GITHUB= 											yes
GH_ACCOUNT=												blainehansen

USES=															cargo

PLIST_FILES=											bin/postgres_migrator

.include "Makefile.deps"
.include <bsd.port.mk>
