PORTNAME=             medusa
DISTVERSIONPREFIX=    v
DISTVERSION=          0.3.5
PORTREVISION=					0
CATEGORIES=           security
MAINTAINER=           me@peeyushsingh.com
COMMENT=              A cli tool for importing and exporting Hashicorp Vault secrets
LICENSE=              MIT
LICENSE_FILE=         ${WRKSRC}/LICENSE
WWW= 									https://vaultproject.io/

USES=                 go:modules
GO_MODULE= 						github.com/jonasvinther/medusa
PLIST_FILES=					bin/${PORTNAME}

# BUILD_DEPENDS=				go:lang/go npm:www/npm-node16 yarn:www/yarn-node16
# BINARY_ALIAS=					python3=${PYTHON_CMD}
# CPE_VENDOR=           hashicorp
# NO_TEST= 							yes
# USE_RC_SUBR=          vault
# SUB_FILES=            pkg-message

# USES=                 cpe go:modules
# GO_MODULE=            github.com/hashicorp/vault
# GO_BUILDFLAGS=        -tags=ui -ldflags='-s -w -X ${GITHUB_BASE}/sdk/version.Version=${PORTVERSION} -X ${GITHUB_BASE}/sdk/version.GitCommit=${GITHUB_COMMIT} -X ${GITHUB_BASE}/sdk/version.VersionPrerelease= -X ${GITHUB_BASE}/sdk/version.VersionMetadata='

.include <bsd.port.mk>
