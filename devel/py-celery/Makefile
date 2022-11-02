# Created by: Alexandros Kosiaris <akosiaris+ports@gmail.com>
# Updated by: Peeyush Singh <me@peeyushsingh.com>

PORTNAME= 																	celery
PORTVERSION=																5.2.7
CATEGORIES=																	devel python
MASTER_SITES=																CHEESESHOP
PKGNAMEPREFIX= 															${PYTHON_PKGNAMEPREFIX}

MAINTAINER=																	olgeni@FreeBSD.org
COMMENT=																		Asynchronous task queue/job queue

LICENSE=																		BSD3CLAUSE
LICENSE_FILE=																${WRKSRC}/LICENSE

USES=																				cpe python:3.10
CPE_VENDOR=																	${PORTNAME}project
USE_PYTHON=																	autoplist distutils allflavors concurrent
NO_ARCH=																		yes

OPTIONS_DEFINE= 														GEVENT EVENTLET MSGPACK YAML AUTH TBLIB CONSUL AMQP REDIS S3
OPTIONS_DEFAULT= 														GEVENT MSGPACK AMQP REDIS S3

GEVENT_DESC=																Gevent threading pool
EVENTLET_DESC=															Eventlet threading pool
MSGPACK_DESC=																MessagePack serializer
YAML_DESC=																	YAML serializer
AUTH_DESC=																	Auth serializer
TBLIB_DESC=																	Task remote tracebacks
CONSUL_DESC=																Consul key-value storage
AMQP=																				AMQP broker
REDIS=																			Redis backend
S3=																					S3 backend

OPTIONS_GROUP=															MN1_THREADING
OPTIONS_GROUP_MN1_THREADING=								GEVENT EVENTLET

OPTIONS_MULTI=															AL1_SERIALIZER AL1_BACKEND
OPTIONS_MULTI_AL1_SERIALIZER=								MSGPACK YAML
OPTIONS_MULTI_AL1_BACKEND=									CONSUL AMQP REDIS S3

RUN_DEPENDS=																${PYTHON_PKGNAMEPREFIX}billiard>=0:devel/py-billiard@${PY_FLAVOR} \
																						${PYTHON_PKGNAMEPREFIX}pytz>=0:devel/py-pytz@${PY_FLAVOR} \
																						${PYTHON_PKGNAMEPREFIX}kombu>=0:net/py-kombu@${PY_FLAVOR} \
																						${PYTHON_PKGNAMEPREFIX}vine>=0:devel/py-vine@${PY_FLAVOR} \
																						${PYTHON_PKGNAMEPREFIX}click-didyoumean>=0:devel/py-click-didyoumean@${PY_FLAVOR} \
																						${PYTHON_PKGNAMEPREFIX}click-plugins>=0:devel/py-click-plugins@${PY_FLAVOR} \
																						${PYTHON_PKGNAMEPREFIX}click-repl>=0:devel/py-click-repl@${PY_FLAVOR} \
																						${PYTHON_PKGNAMEPREFIX}vine>=0:devel/py-vine@${PY_FLAVOR}

GEVENT_RUN_DEPENDS=													${PYTHON_PKGNAMEPREFIX}gevent>=0:devel/py-gevent@${PY_FLAVOR}
EVENTLET_RUN_DEPENDS= 											${PYTHON_PKGNAMEPREFIX}eventlet>=0:net/py-eventlet@${PY_FLAVOR}
MSGPACK_RUN_DEPENDS= 												${PYTHON_PKGNAMEPREFIX}msgpack>=0:devel/py-msgpack@${PY_FLAVOR}
YAML_RUN_DEPENDS= 													${PYTHON_PKGNAMEPREFIX}yaml>=0:devel/py-yaml@${PY_FLAVOR}
AMQP_RUN_DEPENDS= 													${PYTHON_PKGNAMEPREFIX}amqp>=0:net/py-amqp@${PY_FLAVOR}
REDIS_RUN_DEPENDS= 													${PYTHON_PKGNAMEPREFIX}redis>=0:databases/py-redis@${PY_FLAVOR}
S3_RUN_DEPENDS= 														${PYTHON_PKGNAMEPREFIX}s3transfer>=0:net/py-s3transfer@${PY_FLAVOR}

.include <bsd.port.mk>
