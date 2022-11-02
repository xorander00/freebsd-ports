PORTNAME= 												cargo-edit
PORTVERSION=											0.11.5
DISTVERSIONPREFIX=								v
CATEGORIES=												devel
MAINTAINER=												me@peeyushsingh.com
COMMENT=													A utility for managing cargo dependencies from the command line
LICENSE=													MIT
LICENSE_FILE=											${WRKSRC}/LICENSE

USE_GITHUB= 											yes
GH_ACCOUNT=												killercup
GH_PROJECT=												${PORTNAME}
GH_TAGNAME= 											${DISTVERSIONFULL}

USES=															cargo ssl

PLIST_FILES=											bin/cargo-add \
																	bin/cargo-upgrade \
																	bin/cargo-rm \
																	bin/cargo-set-version

post-stage:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/cargo-add
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/cargo-upgrade
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/cargo-rm
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/cargo-set-version

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
