#!/bin/bash

function remove_docker_image {
        docker_image=$1
        docker images | grep $docker_image
        if [ $? -eq 0 ]
        then
                docker ps -a | grep $docker_image
                if [ $? -eq 0 ]
                then
                        docker ps -a | grep $docker_image | \
                        while read container_id junk ; do docker container rm -f $container_id; done >/dev/null 2>&1
                fi
                docker image rm -f ezzobad/awsome-builder:$docker_image
        else
                echo "The image ($docker_image) dose not exist."
        fi
}
remove_docker_image "cobol-base"
remove_docker_image "cobol-lambda"
remove_docker_image "lambda-test"