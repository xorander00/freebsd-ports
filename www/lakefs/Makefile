PORTNAME=											lakefs
DISTVERSION=									0.83.4
DISTVERSIONPREFIX=						v
PORTREVISION=									0
CATEGORIES=										www
MAINTAINER=										me@peeyushsingh.com
COMMENT=											Git-like capabilities for your object storage
LICENSE=											APACHE20
LICENSE_FILE=									${WRKSRC}/LICENSE
WWW=													https://github.com/treeverse/lakeFS

#MASTER_SITES+=                https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/6.2.0/:openapi
#DISTFILES+= 									openapi-generator-cli-6.2.0.jar:openapi
#EXTRACT_ONLY= 								${DISTVERSIONFULL}.zip

_GOTAG_VERSION= 							github.com/treeverse/lakefs/pkg/version.Version=${DISTVERSIONFULL}

USE_GITHUB= 									yes
GH_ACCOUNT= 									treeverse
GH_PROJECT= 									lakefs
GH_TAGNAME= 									${DISTVERSIONFULL}

USES=													go:modules python:3.9,build gmake
GO_MODULE=										github.com/treeverse/lakefs
GO_TARGET= 										./cmd/lakefs:lakefs ./cmd/lakectl:lakectl
GO_BUILDFLAGS=								-ldflags="-s -w -X ${_GOTAG_VERSION}"
#USE_JAVA= 										yes
#JAVA_VERSION=									8
#JAVA_BUILD= 									yes

USE_RC_SUBR= 									${PORTNAME}
PLIST_FILES= 									bin/${PORTNAME}

pre-build:
	# cd ${WRKSRC} && gmake gen-api
	# cd ${WRKSRC} && go install github.com/treeverse/lakefs/pkg/actions/mock
	# cd ${WRKSRC} && go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen
	# cd ${WRKSRC} && go install github.com/golang/mock/mockgen
	# cd ${WRKSRC} && go install github.com/golangci/golangci-lint/cmd/golangci-lint
	# cd ${WRKSRC} && go install google.golang.org/protobuf/cmd/protoc-gen-go
	cd ${WRKSRC} && go mod download
	cd ${WRKSRC} && go mod vendor
	cd ${WRKSRC} && go generate ./pkg/api
	cd ${WRKSRC} && go generate ./pkg/auth
	cd ${WRKSRC}/pkg/auth && oapi-codegen -package auth -generate "types,client"  -o client.gen.go ../../api/authorization.yml
	cd ${WRKSRC}/pkg/api && oapi-codegen -package api -generate "types,client,chi-server,spec" -templates tmpl -o lakefs.gen.go ../../api/swagger.yml
	cd ${WRKSRC}/pkg/actions && mockgen -package=mock -destination=mock/mock_actions.go github.com/treeverse/lakefs/pkg/actions Source,OutputWriter
	cd ${WRKSRC}/pkg/kv && mockgen -source=store.go -destination=mock/store.go -package=mock
	cd ${WRKSRC}/pkg/graveler && mockgen -source=graveler.go -destination=mock/graveler.go -package=mock
	cd ${WRKSRC}/pkg/graveler/committed && mockgen -source=range_manager.go -destination=mock/range_manager.go -package=mock
	cd ${WRKSRC}/pkg/graveler/committed && mockgen -source=meta_range.go -destination=mock/meta_range.go -package=mock
	cd ${WRKSRC}/pkg/graveler/committed && mockgen -source=batch_write_closer.go -destination=mock/batch_write_closer.go -package=mock
	cd ${WRKSRC}/pkg/pyramid && mockgen -source=pyramid.go -destination=mock/pyramid.go -package=mock
	# cd ${WRKSRC}/pkg/auth && mockgen -package=mock -destination=mock/mock_auth_client.go github.com/treeverse/lakefs/pkg/auth ClientWithResponsesInterface
	cd ${WRKSRC}/webui && npm i
	cd ${WRKSRC}/webui && npm run build

# _OPENAPI_JAR=									${DISTDIR}/${DIST_SUBDIR}/openapi-generator-cli-6.2.0.jar
#
# post-fetch:
# 	@curl -s -o ${_OPENAPI_JAR} https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/6.2.0/openapi-generator-cli-6.2.0.jar
#
# pre-build:
# 	@${JAVA} -jar ${_OPENAPI_JAR} generate \
# 		-g java \
# 		--invoker-package io.lakefs.clients.api \
# 		--http-user-agent "lakefs-java-sdk/0.1.0" \
# 		--additional-properties=hideGenerationTimestamp=true,artifactVersion=0.1.0,parentArtifactId=lakefs-parent,parentGroupId=io.lakefs,parentVersion=0,groupId=io.lakefs,artifactId='api-client',artifactDescription='lakeFS OpenAPI Java client',artifactUrl=https://lakefs.io,apiPackage=io.lakefs.clients.api,modelPackage=io.lakefs.clients.api.model,mainPackage=io.lakefs.clients.api,developerEmail=services@treeverse.io,developerName='Treeverse lakeFS dev',developerOrganization='lakefs.io',developerOrganizationUrl='https://lakefs.io',licenseName=apache2,licenseUrl=http://www.apache.org/licenses/,scmConnection=scm:git:git@github.com:treeverse/lakeFS.git,scmDeveloperConnection=scm:git:git@github.com:treeverse/lakeFS.git,scmUrl=https://github.com/treeverse/lakeFS \
# 		-i ${WRKSRC}/clients/java/api/openapi.yaml \
# 		-o ${WRKSRC}/clients/java
#
# 	@${JAVA} -jar ${_OPENAPI_JAR} generate \
# 		-g python \
# 		--package-name lakefs_client \
# 		--http-user-agent "lakefs-python-sdk/0.1.0" \
# 		--git-user-id treeverse --git-repo-id lakeFS \
# 		--additional-properties=infoName=Treeverse,infoEmail=services@treeverse.io,packageName=lakefs_client,packageVersion=0.1.0,projectName=lakefs-client,packageUrl=https://github.com/treeverse/lakeFS/tree/master/clients/python \
# 		-t ${WRKSRC}/clients/python/templates \
# 		-i ${WRKSRC}/clients/java/api/openapi.yaml \
# 		-o ${WRKSRC}/clients/python
#
# 	@cd ${WRKSRC}/clients/python/lakefs_client && find . -type f -exec touch {} +
# 	@cd ${WRKSRC}/clients/python && python3.9 -m pip install build --user
# 	@cd ${WRKSRC}/clients/python && python3.9 -m build --sdist --wheel --outdir dist/
#
# do-build:
# 	@cd ${WRKSRC} && gmake build

.sinclude "Makefile.vendored"
.include <bsd.port.mk>
