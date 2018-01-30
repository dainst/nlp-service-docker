# nlp-service-docker
Docker configuration for developing [nlp_service](https://github.com/dainst/nlp_service).


## Usage

### Git

For further details see: [Git docs](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

#### Setting up git submodules
```
git submodule init
git submodule update
```

### Docker

For further details see: 
[Docker docs](https://docs.docker.com/compose/reference/overview/#command-options-overview-and-help).

#### build services:
`docker-compose build` 

#### create & start all containers:
`docker-compose up`

#### stop containers:
`CTRL-C` or `docker-compose stop`

#### start containers:
`docker-compose start`

#### stop and remove containers: 
`docker-compose down` or `docker-compose down -v` (`-v` to also remove the database volumes)

### Interfaces:
- The web service container should be mapped to [localhost:5000](http://localhost:5000). If you navigate to 
[/database_info](http://localhost:5000/database_info), you should currently see the MongoDB server
info.