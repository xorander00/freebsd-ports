PORTNAME=											luahelper
PORTVERSION=									20221020
PORTREVISION=									0
CATEGORIES=										devel
MAINTAINER=										me@peeyushsingh.com
COMMENT=											LuaHelper is a High-performance lua VSCode plugin, Language Server Protocol for lua
LICENSE=											MIT
WWW=													https://github.com/${GH_ACCOUNT}/${GH_PROJECT}

USE_GITHUB= 									yes
GH_ACCOUNT=   								Tencent
GH_PROJECT= 									LuaHelper
GH_TAGNAME= 									6b9bc754b9034754fa11c87cf77e1a5d36db205d

MASTER_SITES=									https://raw.githubusercontent.com/${GH_ACCOUNT}/${GH_PROJECT}/${GH_TAGNAME}/luahelper-lsp/:gomod
DISTFILES=										go.mod:gomod

USES=													go:modules
GO_MODULE=										luahelper-lsp
WRKSRC_SUBDIR= 								luahelper-lsp

PLIST_FILES= 									bin/${PORTNAME}

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
