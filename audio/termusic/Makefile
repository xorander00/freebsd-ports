PORTNAME= 												termusic
DISTVERSION=											0.7.5
PORTREVISION= 										0
DISTVERSIONPREFIX= 								v
CATEGORIES=												audio
MAINTAINER=												me@peeyushsingh.com
COMMENT= 													Music Player TUI written in Rust
LICENSE_COMB= 										dual
LICENSE=													MIT GPLv3
LICENSE_FILE_MIT=									${WRKSRC}/LICENSE_MIT
LICENSE_FILE_GPLv3=								${WRKSRC}/LICENSE_GPLv3

USE_GITHUB= 											yes
GH_ACCOUNT=												tramhao
GH_PROJECT=												${PORTNAME}

USES=															cargo
LIB_DEPENDS+= 										libasound.so:audio/alsa-lib
CARGO_FEATURES+= 									mpris

LIB_DEPENDS+= 										libdbus-1.so:devel/dbus

PLIST_FILES=											bin/${PORTNAME}

post-stage:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
