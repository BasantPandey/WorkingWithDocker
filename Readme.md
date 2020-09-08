# Working With Docker

Bootcamp to use Docker ant its example. Here are the some of the basic Docker commands.

## Docker Client Image Commands

1. docker pull [image name]
2. docker images
3. docker rmi [image ID]

## Docker Client Container Commands

1. docker run [image name]
2. docker ps -a
3. docker rm [container ID]

#example

    1. Power shell (Shared Code)
    docker run -p 8080:3000 -v ${PWD}:/var/www -w "/var/www" node npm start
    2. Using DockerFile
    Docker run
    3.

docker exec -it <container_id_or_name> echo "I'm inside the container!"
