PORTNAME 													= ytui-music
DISTVERSION 											= 2.0.0-rc1
PORTREVISION 											= 0
DISTVERSIONPREFIX 							  = v
CATEGORIES 												= audio
MAINTAINER 												= me@peeyushsingh.com
LICENSE 													= GPLv2
COMMENT 													= YouTube client in terminal for music
WWW 															= https://github.com/sudipghimire533/ytui-music

USE_GITHUB												= yes
GH_ACCOUNT												= sudipghimire533
GH_PROJECT												= ytui-music
GH_TAGNAME												= ${DISTVERSIONFULL}

USES															= cargo ssl
# CARGO_CARGOTOML										= ${WRKSRC}/subdir/Cargo.toml
# CARGO_CARGOLOCK										= ${WRKSRC}/subdir/Cargo.lock
CARGO_INSTALL_PATH								+= ./front-end
# CARGO_FEATURES										+= --no-default-features rustls
# CARGO_BUILDDEP										= no
RUN_DEPENDS												+= mpv:multimedia/mpv youtube-dl:www/yt-dlp

PLIST_FILES												+= bin/ytui_music

post-install:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/ytui_music

.sinclude "../../globals.mk"
.sinclude "Makefile.vendored"
.include <bsd.port.mk>
