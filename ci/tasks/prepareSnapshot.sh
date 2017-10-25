#!/bin/sh

set -e # fail fast
set -x # print commands
export TERM=${TERM:-dumb}

echo "PrepareSnapshot.sh -- Start "
URL: NOT_SET_URL
USERNAME: NOT_SET_USERNAME
PASSWORD: NOT_SET_PASSWORD
GROUPID: NOT_SET_GROUPID
ARTIFACTID: NOT_SET_ARTIFACTID
VERSION: NOT_SET_VERSION
DESTDIR: build

url=${URL}
groupID=${GROUPID}
artifactID=${ARTIFACTID}
version=${VERSION}
destDir=${DESTDIR}
username=${USERNAME}
password=${PASSWORD}

# url=http://10.210.231.83:8081/repository/odt-maven-snapshot/
# groupID=com.example
# artifactID=spring-music
# version=1.2.2-SNAPSHOT
# destDir=tmp
# username=admin
# password=admin123

#mvn dependency:copy -Dartifact=com.example:spring-music:1.2.2-SNAPSHOT -DoutputDirectory=./tmp -Drepository.url=http://10.210.231.83:8081/repository/odt-maven-snapshot/ -Drepository.username=admin -Drepository.password=admin123 -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true
mvn dependency:copy -Dartifact=${groupID}:${artifactID}:${version} -DoutputDirectory=${destDir} -Drepository.url=${url} -Drepository.username=${username} -Drepository.password=${password} -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true

echo "PrepareSnapshot.sh -- Done"
