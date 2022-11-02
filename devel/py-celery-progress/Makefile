PORTNAME=									celery-progress
PORTVERSION=							0.1.1
CATEGORIES=								devel
MASTER_SITES=							CHEESESHOP
PKGNAMEPREFIX=						${PYTHON_PKGNAMEPREFIX}

MAINTAINER=								gettoknowmi@yahoo.com
COMMENT=									Distributed Task Queue

LICENSE=									MIT
LICENSE_FILE=							${WRKSRC}/LICENSE

RUN_DEPENDS+=							redis>0:databases/redis \
													rabbitmq>0:net/rabbitmq \
													websocat>0:www/websocat	\
			 										${PYTHON_PKGNAMEPREFIX}celery>0:devel/py-celery@${PY_FLAVOR}

USES=											python:3.10,run
USE_PYTHON=								autoplist distutils allflavors
NO_ARCH=									yes

.include <bsd.port.mk>
