PORTNAME=														supersonic
DISTVERSION=												0.10.1
PORTREVISION=												0
DISTVERSIONPREFIX=									v
CATEGORIES=													audio
LICENSE=														GPLv3
LICENSE_FILE=												${WRKSRC}/LICENSE
MAINTAINER=													me@peeyushsingh.com
COMMENT=														A lightweight cross-platform desktop client for Subsonic music servers
WWW=																https://github.com/dweymouth/supersonic

# HAS_INTERNAL_DIST =								  yes
# USE_INTERNAL_DIST ?=								yes

# NO_BUILD=														yes
# NO_INSTALL=													yes
# NO_WRKSUBDIR=												yes

USE_GITHUB													= yes
GH_ACCOUNT													= dweymouth
GH_PROJECT													= supersonic
GH_TAGNAME													= ${DISTVERSIONFULL}
GIT_COMMIT													=

MASTER_SITES												+= https://raw.githubusercontent.com/${GH_ACCOUNT}/${GH_PROJECT}/${GH_TAGNAME}/:gh
DISTFILES														+= go.mod:gh

USES=																go:modules pkgconfig xorg desktop-file-utils linux
GO_MODULE=													github.com/dweymouth/supersonic
GO_BUILDFLAGS+= 										-tags=wayland
USE_XORG=														xcursor xi

BUILD_DEPENDS+=											/usr/local/include/mpv/client.h:multimedia/mpv \
																		/usr/local/include/linux/input.h:devel/evdev-proto
LIB_DEPENDS+=												libglfw.so:graphics/glfw

PLIST_FILES+= 											bin/supersonic \
																		share/applications/supersonic.desktop \
																		share/pixmaps/supersonic.png

post-build:
	@cd ${WRKSRC} && /usr/bin/env CGO_CFLAGS="-I/usr/local/include" fyne package -os freebsd -name Supersonic -appVersion ${DISTVERSION} -icon ./res/appicon-512.png

post-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/applications/
	@${INSTALL_DATA} ${WRKSRC}/res/supersonic-desktop.desktop ${STAGEDIR}${PREFIX}/share/applications/supersonic.desktop
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/pixmaps/
	@${INSTALL_DATA} ${WRKSRC}/res/appicon-512.png ${STAGEDIR}${PREFIX}/share/pixmaps/supersonic.png

.sinclude "../../globals.mk"
.include <bsd.port.mk>
