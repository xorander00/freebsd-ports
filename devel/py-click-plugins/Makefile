PORTNAME=								click-plugins
PORTVERSION=						1.1.1
CATEGORIES=							devel python
MASTER_SITES=						CHEESESHOP
PKGNAMEPREFIX=					${PYTHON_PKGNAMEPREFIX}

MAINTAINER=							ehaupt@FreeBSD.org
COMMENT=								Click extension to register CLI commands via setuptools

LICENSE=								BSD3CLAUSE
LICENSE_FILE=						${WRKSRC}/LICENSE.txt

RUN_DEPENDS=						${PYTHON_PKGNAMEPREFIX}click>=0:devel/py-click@${PY_FLAVOR}

USES=										python
USE_PYTHON=							autoplist distutils allflavors
NO_ARCH=								yes

.include <bsd.port.mk>
