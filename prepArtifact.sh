#
#
# Inputs:
# - SnapshotURL
# - GroupID
# - ArtifactID
# - Version of Artifact
# - Destination Directory
# - Username
# - Password

url=http://10.210.231.83:8081/repository/odt-maven-snapshot/
groupID=com.example
artifactID=spring-music
version=1.2.2-SNAPSHOT
destDir=tmp
username=admin
password=admin123

#mvn dependency:copy -Dartifact=com.example:spring-music:1.2.2-SNAPSHOT -DoutputDirectory=./tmp -Drepository.url=http://10.210.231.83:8081/repository/odt-maven-snapshot/ -Drepository.username=admin -Drepository.password=admin123 -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true
mvn dependency:copy -Dartifact=${groupID}:${artifactID}:${version} -DoutputDirectory=${destDir} -Drepository.url=${url} -Drepository.username=${username} -Drepository.password=${password} -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true
