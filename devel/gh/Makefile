PORTNAME=										gh
DISTVERSION=								2.15.0
DISTVERSIONPREFIX=					v
CATEGORIES=									devel
MAINTAINER=									me@peeyushsingh.com
COMMENT=										GitHub's official command line tool
LICENSE=										MIT
LICENSE_FILE=								${WRKSRC}/LICENSE
WWW= 												https://cli.github.com

USE_GITHUB=									yes
GH_ACCOUNT=									cli
GH_PROJECT=									${GH_ACCOUNT}

RUN_DEPENDS=								git:devel/git

USES=												go:modules

_BUILD_VERSION=							${DISTVERSION}
_BUILD_DATE=								$$(date +%Y-%m-%d)

GO_TARGET=									./cmd/${PORTNAME}
GO_BUILDFLAGS=							-ldflags "\
														-s -w \
														-X github.com/${GH_ACCOUNT}/${GH_PROJECT}/v2/internal/build.Version=${_BUILD_VERSION} \
														-X github.com/${GH_ACCOUNT}/${GH_PROJECT}/v2/internal/build.Date=${_BUILD_DATE}"

_DOCS=											README.md docs/gh-vs-hub.md docs/releasing.md \
														docs/command-line-syntax.md docs/source.md
PORTDOCS=										${_DOCS:T}

OPTIONS_DEFINE=							COMPLETIONS DOCS MANPAGES
OPTIONS_DEFAULT=						COMPLETIONS MANPAGES
OPTIONS_SUB=								yes

COMPLETIONS_DESC=						Build and install shell completions

do-build-COMPLETIONS-on:
.for SHELL in bash fish zsh
	${GO_WRKDIR_BIN}/${PORTNAME} completion -s ${SHELL} > ${WRKSRC}/${SHELL}
.endfor

do-build-MANPAGES-on:
	(cd ${WRKSRC} && \
		${SETENV} ${MAKE_ENV} ${GO_ENV} ${GO_CMD} run ${GO_BUILDFLAGS} \
		./cmd/gen-docs --man-page --doc-path docs/man 2>/dev/null)

post-install-COMPLETIONS-on:
	${INSTALL_DATA} ${WRKSRC}/bash \
		${STAGEDIR}${PREFIX}/share/bash-completion/completions/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/fish \
		${STAGEDIR}${PREFIX}/share/fish/vendor_completions.d/${PORTNAME}.fish
	${INSTALL_DATA} ${WRKSRC}/zsh \
		${STAGEDIR}${PREFIX}/share/zsh/site-functions/_${PORTNAME}

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC} && \
		${INSTALL_DATA} ${_DOCS} \
		${STAGEDIR}${DOCSDIR})

post-install-MANPAGES-on:
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.1 \
		${STAGEDIR}${MAN1PREFIX}/man/man1

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
