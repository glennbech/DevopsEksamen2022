Oppgave 1
For at worfilen skal kunne fungere med din DockerHub konto så må du gjøre noe punkter
.Gå til dockerhub siden din og lag en Access Token
.Gå til selve docker.yml filen og endre  ${{ secrets.DOCKER_HUB_TOKEN }} til ${{ secrets.DOCKER_HUB_ACCESS_TOKEN }}
.Gå til Github repo og deretter til settings-secrets- action og legger inn 2 repository 
.DOCKER_HUB_USERNAME = dockerhub bruker navn
.DOCKER_HUB_ACCESS_TOKEN = access key du lagde i dockerhub
Etter du har gjort dette så skal action kjøres helt fint
Grunnen til at workfilen ikke fungerte er fordi vi ikke hadde puttet noen github action secret i repository vårrt
og det var en liten feil i selve workfilen der det sto ${{ secrets.DOCKER_HUB_TOKEN } istedenfor ${{ secrets.DOCKER_HUB_ACCESS_TOKEN }}