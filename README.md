# nlp-service-docker
Docker configuration for developing [nlp_service](https://github.com/dainst/nlp_service).

## Prerequisites

* [Docker](https://www.docker.com/), plus [docker-compose](https://docs.docker.com/compose/)

## Usage

### Git

For further details see: [Git docs](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

#### Setting up git submodules

This repository contains submodules, in order to pull those, you have to run the following commands from the project
root:

```
git submodule init
git submodule update
```

If you want to work on a submodule's code, you first have to navigate to its respective directory and checkout the branch 
you need. The submodule will always start in a detached head state, see this 
[explanation](https://stackoverflow.com/questions/21980073/git-submodules-without-detached-head).

### Docker
For the most used commands have a look at the [DOCKER.md](DOCKER.md).

### Interfaces:

The Flask web service container by default is mapped to [localhost:5000](http://localhost:5000). The REST API is 
documented [here](https://github.com/dainst/nlp_service).

### Running tests

#### Unit tests nlp components

1. Connect to the worker container, for an explanation on how to do that see the [DOCKER.md](DOCKER.md).
2. Change to the correct directory: `cd /usr/src/nlp_components/idai_journals`.
3. Run the tests: `pytest --verbose`.
