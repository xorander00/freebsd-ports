PORTNAME=										rtx
DISTVERSION=								1.3.2
PORTREVISION=								0
DISTVERSIONPREFIX=					v
CATEGORIES=									sysutils
COMMENT=										Runtime Executor, asdf rust clone
MAINTAINER=									me@peeyushsingh.com
LICENSE=										MIT
LICENSE_FILE= 							${WRKSRC}/LICENSE
WWW=												https://github.com/jdxcode/rtx

USE_GITHUB= 								yes
GH_ACCOUNT= 								jdxcode
GH_PROJECT= 								rtx
GH_TAGNAME= 								v1.3.2

USES+= 											cargo

PLIST_SUB+= 								PREFIX=${PREFIX} NAME=${PORTNAME}

post-stage:
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/fish/completions/
	@${INSTALL_DATA} ${WRKSRC}/completions/rtx.fish ${STAGEDIR}${PREFIX}/share/fish/completions
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/examples/rtx
	@${INSTALL_DATA} ${FILESDIR}/config.toml.sample ${STAGEDIR}${PREFIX}/share/examples/rtx
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
