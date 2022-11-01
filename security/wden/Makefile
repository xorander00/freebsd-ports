PORTNAME=														wden
PORTVERSION=												0.5.0
CATEGORIES=													security
MAINTAINER=													me@peeyushsingh.com
COMMENT=														A simple TUI for Bitwarden, written in Rust
LICENSE=														MIT
LICENSE_FILE=												${WRKSRC}/LICENSE
WWW=																https://github.com/luryus/wden

USE_GITHUB=													yes
GH_ACCOUNT=													luryus
GH_PROJECT=													${PORTNAME}

USES=															  cargo ssl
LIB_DEPENDS+=                       libxcb.so:x11/libxcb

PLIST_FILES=											  bin/wden

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
