#!/bin/sh
set -e

export PACKAGE_VERSION=0.1.0
export SCRIPTDIR=$(pwd)
export BASEDIR=$SCRIPTDIR/work/github.com/treeverse/lakefs@v0.83.2

cd $SCRIPTDIR
java -jar .local/openapi-generator-cli-6.2.0.jar generate \
  -g java \
  --invoker-package io.lakefs.clients.api \
  --http-user-agent "lakefs-java-sdk/${PACKAGE_VERSION}" \
  --additional-properties=hideGenerationTimestamp=true,artifactVersion=${PACKAGE_VERSION},parentArtifactId=lakefs-parent,parentGroupId=io.lakefs,parentVersion=0,groupId=io.lakefs,artifactId='api-client',artifactDescription='lakeFS OpenAPI Java client',artifactUrl=https://lakefs.io,apiPackage=io.lakefs.clients.api,modelPackage=io.lakefs.clients.api.model,mainPackage=io.lakefs.clients.api,developerEmail=services@treeverse.io,developerName='Treeverse lakeFS dev',developerOrganization='lakefs.io',developerOrganizationUrl='https://lakefs.io',licenseName=apache2,licenseUrl=http://www.apache.org/licenses/,scmConnection=scm:git:git@github.com:treeverse/lakeFS.git,scmDeveloperConnection=scm:git:git@github.com:treeverse/lakeFS.git,scmUrl=https://github.com/treeverse/lakeFS \
  -i $BASEDIR/clients/java/api/openapi.yaml \
  -o $BASEDIR/clients/java

java -jar .local/openapi-generator-cli-6.2.0.jar generate \
  -g python \
  --package-name lakefs_client \
	--http-user-agent "lakefs-python-sdk/${PACKAGE_VERSION}" \
	--git-user-id treeverse --git-repo-id lakeFS \
	--additional-properties=infoName=Treeverse,infoEmail=services@treeverse.io,packageName=lakefs_client,packageVersion=${PACKAGE_VERSION},projectName=lakefs-client,packageUrl=https://github.com/treeverse/lakeFS/tree/master/clients/python \
  -t $BASEDIR/clients/python/templates \
  -i $BASEDIR/clients/java/api/openapi.yaml \
  -o $BASEDIR/clients/python

cd $BASEDIR/clients/python/lakefs_client
find . -type f -exec touch {} +
cd ..
python3.9 -m pip install build --user
python3.9 -m build --sdist --wheel --outdir dist/
