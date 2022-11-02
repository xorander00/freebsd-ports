PORTNAME=									binaryen
DISTVERSIONPREFIX=				version_
DISTVERSION=							110
CATEGORIES=								devel
MAINTAINER=								me@peeyushsingh.com
COMMENT= 									Compiler infrastructure and toolchain library for WebAssembly
LICENSE=									APACHE20
LICENSE_FILE=							${WRKSRC}/LICENSE
WWW=											https://github.com/WebAssembly/binaryen

USE_GITHUB=								yes
GH_TUPLE=									WebAssembly:${PORTNAME}:${DISTVERSIONPREFIX}${DISTVERSION} \
													google:googletest:e2239ee6043f73722e7aa812a459f54a28552929:googletest

USES=											cmake pkgconfig cpe python:3.6+,build compiler:c++11-lang
USE_LDCONFIG=							yes
CPE_VENDOR=								webassembly

CMAKE_ARGS=								-DBINARYEN_VERSION_INFO=${DISTVERSION}
LDFLAGS+=									-Wno-unused-command-line-argument
BINARY_ALIAS=							python3=${PYTHON_CMD}

post-extract:
	@${RMDIR} ${WRKSRC}/third_party/googletest
	ln -s ${WRKSRC_googletest} ${WRKSRC}/third_party/googletest

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
