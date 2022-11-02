# NOTE: Next.js v12.2.5, as of 2022/08/19, works on FreeBSD and has a prebuilt next-swc package for it
# 			Keeping this for potential future reference if required to do an internal build

# ...needs python3
# cd next.js
# CFLAGS=-I/usr/local/include LDFLAGS=-L/usr/local/lib yarn install --production=false --dev
# cd packages/next-swc
# DEBUG='napi:*' cargo build --release -p next-swc
# CC=gcc10 CXX=g++10 CFLAGS=-I/usr/local/include LDFLAGS=-L/usr/local/lib yarn run build-native
# cp native/next-swc.freebsd-x64.node .
# strip -s next-swc.freebsd-x64.node
# cp target/release/libnext_swc.so .
# strip -s libnext_swc.so

PORTNAME= 												next-swc
DISTVERSION=											12.1.5
DISTVERSIONPREFIX=								v
CATEGORIES=												develop
MAINTAINER=												me@peeyushsingh.com
COMMENT=													Next.js SWC
LICENSE=													MIT
LICENSE_FILE=											${WRKSRC}/LICENSE
WWW= 															http://github.com/vercel/next.js

USE_GITHUB= 											yes
GH_ACCOUNT=												vercel/next.js		# FIXME

USES=															cargo
CARGO_CRATES=

PLIST_FILES=											dist/next-swc-freebsd13-amd64

.include <bsd.port.mk>
