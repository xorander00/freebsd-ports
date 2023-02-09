PORTNAME=										js-lessc
DISTVERSION=								4.1.3
PORTREVISION=								0
DISTVERSIONPREFIX=					v
CATEGORIES=									devel
MAINTAINER=									me@peeyushsingh.com
COMMENT=										Less, the dynamic stylesheet language
LICENSE=										APACHE20
WWW=												https://github.com/less/less.js

USES=												nodejs
FETCH_DEPENDS+=							npm:www/npm
NO_ARCH=										yes

MASTER_SITES=
DISTFILES=

VENDORED_ARCHIVE=						${DISTDIR}/${PORTNAME}-${DISTVERSION}-vendored.zst
BASEDIR_BUILD=							${WRKDIR}/${PORTNAME}-${DISTVERSION}
BASEDIR_STAGE=							${STAGEDIR}${PREFIX}/lib/node_modules/lessc

SUB_FILES+=									lessc.sh
SUB_LIST+=									PREFIX=${PREFIX}

do-fetch:
	@${MKDIR} ${WRKDIR}/
	@npm i --global --prefix=${WRKDIR}/ less@${DISTVERSION}
	@tar -cap -f ${VENDORED_ARCHIVE} -C ${WRKDIR}/ .

do-build:
	@${MKDIR} ${BASEDIR_BUILD}/
	@tar -xp -f ${VENDORED_ARCHIVE} -C ${BASEDIR_BUILD}/

do-install:
	@${MKDIR} ${BASEDIR_STAGE}/
	@cd ${BASEDIR_BUILD}/ && ${COPYTREE_SHARE} bin/ ${BASEDIR_STAGE}/
	@cd ${BASEDIR_BUILD}/ && ${COPYTREE_SHARE} lib/ ${BASEDIR_STAGE}/
	@${INSTALL_SCRIPT} ${WRKDIR}/lessc.sh ${STAGEDIR}${PREFIX}/bin/lessc

.include <bsd.port.mk>
