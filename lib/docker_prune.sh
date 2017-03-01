#!/bin/sh

docker_prune_containers() {
    for container in $(docker ps -aqf status=exited); do
        docker rm "$container"
    done
}

docker_prune_images() {
    for image in $(docker images -qf dangling=true); do
        docker rmi "$image"
    done
}

docker_prune_volumes() {
    for volume in $(docker volume ls -qf dangling=true); do
        docker volume rm "$volume"
    done
}

docker_prune() {
    docker_prune_containers
    docker_prune_images
    docker_prune_volumes
}
