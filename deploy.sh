#!/bin/bash

echo "deploy.sh: hello"

REPOSITORY=releases
REPOSITORYID=releases

GROUPID=com.rsmaxwell.players
ARTIFACTID=players-tt-api-amd64-linux
VERSION=${BUILD_ID}
PACKAGING=zip

URL=https://server.rsmaxwell.co.uk/archiva/repository/${REPOSITORY}

FILENAME=${ARTIFACTID}-${VERSION}.${PACKAGING}

rm -rf ~/workspace/players-tt-api_main/deploy
mkdir -p ~/workspace/players-tt-api_main/deploy

cd ~/workspace/players-tt-api_main/bin
zip ../deploy/${FILENAME} ${ARTIFACTID}

# mvn deploy:deploy-file -DgroupId=${GROUPID} -DartifactId=${ARTIFACTID} -Dversion=${VERSION} -Dpackaging=${PACKAGING} -Dfile=${FILENAME} -DrepositoryId=${REPOSITORYID} -Durl=${URL} -DrepositoryId=${REPOSITORYID}

