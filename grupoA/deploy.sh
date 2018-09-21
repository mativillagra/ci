#!/bin/bash 

PASS=$1

container=$(docker ps -aq --filter "name=grupoA")

echo $container 

if [[ "$container" == '' ]]; then          

       docker run -d -p 8089:80 --name grupoA grupoA.0.0.$PASS

else 

       docker stop $container && docker rm $container && docker run -d -p 8089:80 --name grupoA grupoA.0.0.$PASS

fi
