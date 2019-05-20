#Commandes à run pour créer le docker:

cp Dockerfile /tmp/Dockerfile
cp install.sh /tmp/install.sh
sudo docker build -t tp-docker /tmp
sudo docker tag tp-docker:latest nico35490/tp-docker:latest

sudo docker login -u nico35490 -p mdpdocker

sudo docker push nico35490/tp-docker:latest


#Pour lancer le docker, exécuter:
#sudo docker run --rm -it -v $(pwd) nico35490/tp-docker

#Si on est dans le bash du docker, pour exécuter l'app:
#cd /usr/src/ESIRTP
#java -Djava.library.path=/opencv-java-bin -jar target/fatjar-0.0.1-SNAPSHOT.jar
