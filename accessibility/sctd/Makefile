PORTNAME										= sctd
DISTVERSION									= 0.3.0
PORTREVISION								= 22
CATEGORIES									= accessibility
MAINTAINER									= me@peeyushsingh.com
COMMENT											= Set color temperature daemon
LICENSE											= CC0-1.0 MIT
LICENSE_COMB								= multi
LICENSE_FILE_CC0-1.0				= ${WRKSRC}/LICENSE
WWW													= https://github.com/amir/sctd

USE_GITHUB									= yes
GH_ACCOUNT									= amir

USES												= cargo xorg
USE_XORG										= x11 xrandr

PLIST_FILES									=	bin/sctd

post-install:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/sctd

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
