# Docker cheat sheet 

## Setup
`docker-compose build && docker-compose up` 

For a brief explanation of these and other commands see below.

## Command overview
This is a relatively small collection of often used commands, for further reading see: 
[Docker docs](https://docs.docker.com/compose/reference/overview/#command-options-overview-and-help).

### Build services:
`docker-compose build` 

Builds the images as defined in the different _Dockerfile_. Currently there is only one _Dockerfile_ for the backend.
If you change a _Dockerfile_, this command has to be run again.

### Create & start all containers:
`docker-compose up`

Creates and starts all containers and the networks as defined in the _docker-compose.yml_. If you change anything in
the docker-compose.yml, you have to stop (and potentially remove) the existing containers (see below) and run this 
command again.

If you want to run `N` number of worker container, you can do so with the command:

`docker-compose up --scale nlp-worker=N`

### Stop containers:
`CTRL-C` (if running in foreground) or `docker-compose stop`

### Start containers:
`docker-compose start`

Starts containers that were previously stopped, does __not__ create containers.

### Stop and remove containers: 
`docker-compose down` or `docker-compose down -v` (`-v` to also remove the database container volumes)

### Connecting to a running container from the terminal
`docker exec -it container_name bash`

For the details, again see the [Docker docs](https://docs.docker.com/engine/reference/commandline/exec/). You have 
to replace `container_name` with the actual name of the container you want to connect to, as defined in the 
_docker-compose.yml_. 

ATTENTION: You can start multiple worker container (see __Create & start all containers__ above), which makes
it impossible to name them statically in the _docker-compose.yml_. As a result, you have to first find out the 
dynamically assigned container name:

1. Run `docker container ls`. This should print a list of all currently running containers. The last column should be 
_NAMES_.
2. Use the value found under _NAMES_ to connect, for example: 
`docker exec -it nlpservicedocker_nlp-worker_3 bash`.


### Removing old and unused data
`docker system prune` 

Over time, old containers, unused images and the build cache may fill up your hard drive. By running this command, 
docker removes unused data ([Docker docs](https://docs.docker.com/engine/reference/commandline/system_prune/)).