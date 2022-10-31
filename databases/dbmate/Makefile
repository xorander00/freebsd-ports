PORTNAME= 												dbmate
PORTVERSION=											1.16.0
DISTVERSIONPREFIX=								v
CATEGORIES=												databases
MAINTAINER=												me@peeyushsingh.com
COMMENT=													Database migrations tool written in Go
LICENSE=													MIT
LICENSE_FILE=											${WRKSRC}/LICENSE
WWW= 															http://github.com/amacneil/dbmate

USES=															go:modules sqlite:3
GO_MODULE=												github.com/amacneil/dbmate
PLIST_FILES=											bin/dbmate

post-stage:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/dbmate

.include <bsd.port.mk>
