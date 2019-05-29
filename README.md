# ESIR 2 TP Docker
## Nicolas BOURDIN et Corentin DUCHATELET

Ceci est le rendu de notre TP docker.

Docker est un logiciel libre qui permet de lancer des applications rapidement et simplement dans des conteneurs logiciels. Étant très largement utilisé en entreprise, il semblait important et très intéressant d'avoir un TP pour se familiariser avec cet outil.

Après l'installation d'une machine virtuelle et des composantes nécessaires pour utiliser le service docker, le premier exercice était de mettre en place un resolvproxy et de le tester grâce à terminator. nginx nous a permis de mettre en place ce resolvproxy, qui passe une réponse à ses clients un par un. Avec terminator on a pu observer proprement et clairement le loadbalancing entre les clients. Ensuite on s'est familiariser avec docker compose en déployant le loadbalancer et ses clients.

Ensuite le réel exercice était de dockeriser l'application disponible sur le github de M. Barais https://github.com/barais/ESIRTPDockerSampleApp, la détection de visage. Pour construire opencv nous avons utiliser un docker existant car cela nous avait pris beaucoup de temps d'essayer de le construire dans notre docker. Pour la suite du docker, lisez le dockerfile et le script bash pour comprendre comment nous dockerisons l'application, c'est assez intuitif.

Le script build.sh a pour but de build l'image docker et de l'upload sur le docker hub de Nicolas Bourdin.
Nous utilisons un docker déjà fait pour l'installation de opencv, voir dans le Dockerfile.

Pour lancer le build exécutez ```./build.sh ```
Pour lancer l'application lancez ```sudo docker run -p 8080:8080 --rm -it -v $(pwd) nico35490/tp-docker```


L'application est run sur le port 8080 donc ```localhost:8080```
