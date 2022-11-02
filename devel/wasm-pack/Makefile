PORTNAME= 												wasm-pack
DISTVERSION= 											0.10.3
DISTVERSIONPREFIX= 								v
CATEGORIES=												devel
MAINTAINER=												me@peeyushsingh.com
COMMENT=													Your favorite rust -> wasm workflow tool!
LICENSE=													APACHE20
LICENSE_FILE=											${WRKSRC}/LICENSE-APACHE
WWW=															https://github.com/rustwasm/wasm-pack

USE_GITHUB= 											yes
GH_ACCOUNT=												rustwasm
GH_PROJECT=												${PORTNAME}

USES=															cargo ssl

PLIST_FILES=											bin/wasm-pack

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
