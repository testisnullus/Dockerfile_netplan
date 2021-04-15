#!/bin/bash
pwd
ls -l

read -p "Enter docker image name: " image_name
read -p "Enter docker container name: " cont_name
sudo docker build -t $image_name .
sudo docker run --name $cont_name -it -d -v /home/danil/jinja/:/home/docker/ $image_name
sudo docker exec -t $cont_name /bin/bash -c "j2 -f yaml -o netplan.yaml /home/docker/templates/template.j2 /home/docker/variables/variables.yaml; ls -l"
sudo docker cp test:/home/docker/netplan.yaml /home/danil/jinja/
