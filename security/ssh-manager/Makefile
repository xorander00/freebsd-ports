PORTNAME=             ssh-manager
DISTVERSION=          1.1.0
DISTVERSIONPREFIX=    v
PORTREVISION=					0
CATEGORIES=           security
MAINTAINER=           me@peeyushsingh.com
COMMENT= 							SSH Key Manager for 1Password, Bitwarden and AWS S3. 
LICENSE=              APACHE20
LICENSE_FILE=         ${WRKSRC}/LICENSE

USES=                 go:modules
GO_MODULE= 						github.com/omegion/ssh-manager
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
