# Docker commands
```docker version```
### To list imaged 
```docker images```
### to remove image
```docker rmi imageid/imagename```
### to forcely remove image
``` docker rmi -f imageid/imagename ```
### to remove all images 
docker rmi -f $(docker images -aq)

### to pull a new image
docker pull ubuntu

docker run ubuntu ### to create a container based on ubuntu

docker ps 

docker ps  -a  ### To display all containers which were exited as well
### to remove a container
docker rm nameofthe_container/containerid 
### to forcely remove running container
docker rm -f 55

### to remove all containers
docker rm -f $(docker ps -aq)

### interactive container.. do stdin to the container
docker run -i -t --name ubuntu-container1 ubuntu bash

### to publish a port of a container
docker run -p 8088:80 nginx // 8088 is the host port and 80 is the docker port

### to run a container in detached mode /run in the background 
docker run -d --name n1 -p 8089:80 nginx
### to stop a conatiner
docker stop containerid/name

### to restart a container which is exited Users
docker start containername/containerid

### to exec into the container 

docker exec -it containername/containerid bash
docker exec -it ubuntu-container1 /bin/sh ### -it works as and where stdin is valid
docker exec ubuntu-container1 date

### docker logs

docker logs containerid

### to tailered logs number of lines
docker logs --tail 10 containerid/name

docker logs -n 10 containerid/name

### to get followup logs
docker logs -f containerid/name

### docker create a network
docker network create mybridge2 --gateway 172.25.0.1 --subnet 172.25.255.255/16

### use network while creating a container

docker run -d --name n4 --network mybridge2 -p 8098:80 nginx

### inspecting image and container

docker insepct nginx

docker inspect containerid/name

### To know more about container networking read about CNI (Container Networking Interface)


### To build docker image

docker build . -t yourdockerhubid/nameoftheimage

### docker build with different file name
DockerTraining % docker build -f UpdatedDockerfile . -t jpalaparthi/ubuntuwithvim

### to scan docker image

docker scan imagename


### To copy a file from host to container

docker cp hostfile contaierid:/path

### To copy a file from container to the host machine

docker cp containerid:/path hostpath

### To push docker file
#### before push the image should be built inside the machine
docker push jpalaparthi/ubuntuwithvim
