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

If you want to work on the submodules code, you first have to navigate to its directory and checkout the branch you 
need. The submodule will always start in a detached head state, see this 
[explanation](https://stackoverflow.com/questions/21980073/git-submodules-without-detached-head).

### Docker
For the most used commands have a look at the [DOCKER.md](DOCKER.md).

### Interfaces:
- The web service container should be mapped to [localhost:5000](http://localhost:5000). If you navigate to 
[/database_info](http://localhost:5000/database_info), you should currently see the MongoDB server
info.

### run tests
#### unit tests nlp components
`docker exec -it nlp_service_backend bash`
`cd /usr/src/nlp_components/idai_journals`
`pytest --verbose`
