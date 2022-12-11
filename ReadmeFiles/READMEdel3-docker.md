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

Oppgave 3 
Beskriv deretter med egne ord hva sensor må gjøre for å få sin fork til å laste opp container image til sitt eget ECR repo
For å kunne laste opp container image til sitt eget ECR repo så må du gjøre noen punkter

.Du må først lage secrets i AWS. Der kommer du til å få acce key ID og secret access key, 
Dette er info som du må putte inn i github repo secret.

.Fra dit Cloud9 miljø, autentiser docker mot AWS ECR med kommandoen
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 244530008913.dkr.ecr.eu-west-1.amazonaws.com

.For å kunne Pushe et container image til dit ECR repository så må du: 
docker build -t <ditt tagnavn> .
docker tag <ditt tagnavn> 244530008913.dkr.ecr.eu-west-1.amazonaws.com/<ditt ECR repo navn>
docker push 244530008913.dkr.ecr.eu-west-1.amazonaws.com/<ditt ECR repo navn>

.Gå til docker.yml og endre 
          docker build . -t latest 
          docker tag latest 244530008913.dkr.ecr.eu-west-1.amazonaws.com/viba003-private:latest
          docker push 244530008913.dkr.ecr.eu-west-1.amazonaws.com/viba003-private:latest
          til det du skrev ovenfor i punkt 2. 
          
.Deretter kan du kjøre workflow og se i ECR at det har kommet en image tag
