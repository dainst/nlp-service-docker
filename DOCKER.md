# Docker cheatsheet 

This is used a very small collection of commands often used, for further details see: 
[Docker docs](https://docs.docker.com/compose/reference/overview/#command-options-overview-and-help).

### build services:
`docker-compose build` 

This builds the images as defined in the different _Dockerfile_. Currently there is only one _Dockerfile_ for the backend.
If you change a _Dockerfile_, this command has to be run.

### create & start all containers:
`docker-compose up`

Creates and starts all containers and the networks as defined in the _docker-compose.yml_. If you change anything in
the docker-compose.yml, you have to stop (and potentially remove) the existing containers (see below) and run this 
command.

### stop containers:
`CTRL-C` or `docker-compose stop`

### start containers:
`docker-compose start`

Starts containers that were previously stopped, does __not__ create containers.

### stop and remove containers: 
`docker-compose down` or `docker-compose down -v` (`-v` to also remove the database container volumes)

### Connecting to a running container from the terminal
`docker exec -it container_name bash`

For the details, again see the [Docker docs](https://docs.docker.com/engine/reference/commandline/exec/). You have 
to replace `container_name` with the actual name of the container you want to connect to, as defined in the 
_docker-compose.yml_.

### Removing old and unused data
`docker system prune` 

Over time, old containers, unused images and build cache may fill up your filesystem. By running this command, docker 
removes unused data ([Docker docs](https://docs.docker.com/engine/reference/commandline/system_prune/)).