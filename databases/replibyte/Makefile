PORTNAME= 												replibyte
PORTVERSION= 											0.9.7
DISTVERSIONPREFIX=								v
CATEGORIES=												databases
MAINTAINER=												me@peeyushsingh.com
COMMENT=													Seed your development database with real data
LICENSE=													GPLv3
LICENSE_FILE=											${WRKSRC}/LICENSE
WWW=															https://github.com/Qovery/Replibyte

USE_GITHUB= 											yes
GH_ACCOUNT=												Qovery
GH_PROJECT=												Replibyte

USES=															cargo compiler ssl
CARGO_CARGOTOML=									${WRKSRC}/replibyte/Cargo.toml
CARGO_CARGOLOCK=									${WRKSRC}/replibyte/Cargo.lock

PLIST_FILES=											bin/replibyte

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
