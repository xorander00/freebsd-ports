PORTNAME=									click
PORTVERSION=							8.0.3
PORTREVISION=							1
CATEGORIES=								devel python
MASTER_SITES=							CHEESESHOP
PKGNAMEPREFIX=						${PYTHON_PKGNAMEPREFIX}

MAINTAINER=       				robak@FreeBSD.org
COMMENT=									Python package for creating command line interfaces

LICENSE=									BSD3CLAUSE
LICENSE_FILE=							${WRKSRC}/LICENSE.rst

TEST_DEPENDS=							${PYTHON_PKGNAMEPREFIX}pytest>0:devel/py-pytest@${PY_FLAVOR}

USES=											python
USE_PYTHON=								distutils autoplist allflavors
NO_ARCH=      						yes

do-test:
	@cd ${WRKSRC} && ${PYTHON_CMD} -m pytest -v -p no:warnings

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} < 31000
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}importlib-metadata>=3.6.0:devel/py-importlib-metadata@${PY_FLAVOR}
.endif

.include <bsd.port.post.mk>
