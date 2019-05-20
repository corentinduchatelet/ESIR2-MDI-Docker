#!/bin/bash

tools=(maven git)

apt-get update && apt-get install -y ${tools[@]}

mvn install:install-file -Dfile=/opencv-java-bin/opencv-320.jar -DgroupId=org.opencv -DartifactId=opencv -Dversion=3.2.0 -Dpackaging=jar
pwd
git clone https://github.com/nico35490/ESIRTPDockerSampleApp.git

cd ESIRTPDockerSampleApp

mvn install 

mvn package 

cp -a . /usr/src/ESIRTP

curl -o /opencv-java-bin/haarcascade_frontalface_default.xml  https://raw.githubusercontent.com/opencv/opencv/master/data/haarcascades/haarcascade_frontalface_default.xml



