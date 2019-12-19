#!/bin/bash 

PASS=$1

container=$(docker ps -aq --filter "name=scratch")

echo $container 

if [[ "$container" == '' ]]; then          

       docker run -d -p 8888:5000 --name scratch scratch:0.0.$PASS

else 

       docker stop $container && docker rm $container && docker run -d -p 8888:5000 --name scratch scratch:0.0.$PASS

fi
