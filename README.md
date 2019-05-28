# ESIR 2 TP Docker
## Nicolas BOURDIN et Corentin DUCHATELET

Ceci est le rendu de notre TP docker.
Le script build.sh a pour but de build l'image docker et de l'upload sur le docker hub de Nicolas Bourdin.
Nous utilisons un docker déjà fait pour l'installation de opencv, voir dans le Dockerfile.

Pour lancer le build exécutez ```./build.sh ```
Pour lancer l'application lancez ```sudo docker run -p 8080:8080 --rm -it -v $(pwd) nico35490/tp-docker```


L'application est run sur le port 8080 donc ```localhost:8080```
