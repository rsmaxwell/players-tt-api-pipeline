#!/bin/bash

REPOSITORY=releases
REPOSITORYID=releases

GROUPID=com.rsmaxwell.players
ARTIFACTID=players-tt-api_amd64-linux
VERSION=${BUILD_ID}
PACKAGING=zip

URL=https://server.rsmaxwell.co.uk/archiva/repository/${REPOSITORY}

FILENAME=${ARTIFACTID}_${VERSION}.${PACKAGING}

rm -rf ~/workspace/players-tt-api_main/deploy
mkdir -p ~/workspace/players-tt-api_main/deploy

cd ~/workspace/players-tt-api_main/bin
zip ../deploy/${FILENAME} players-tt-api

cd ~/workspace/players-tt-api_main/deploy
mvn --batch-mode deploy:deploy-file -DgroupId=${GROUPID} -DartifactId=${ARTIFACTID} -Dversion=${VERSION} -Dpackaging=${PACKAGING} -Dfile=${FILENAME} -DrepositoryId=${REPOSITORYID} -Durl=${URL} -DrepositoryId=${REPOSITORYID}

