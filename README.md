# prova-docker
[![Docker Stars](https://img.shields.io/docker/stars/xasos/prova-docker.svg)](https://hub.docker.com/r/xasos/prova-docker/)
[![Docker Pulls](https://img.shields.io/docker/pulls/xasos/prova-docker.svg)](https://hub.docker.com/r/xasos/prova-docker/)

Docker image for running the [Prova](https://github.com/BitGo/prova) daemon.

## Installing the Image
The official installation docs for Prova can be found [here](https://github.com/BitGo/prova/blob/master/docs/install-guide.md).

### Via Docker Hub
This docker image can be found on Docker Hub [here](https://hub.docker.com/r/xasos/prova-docker/). Download it by running:
```sh
$ docker pull xasos/prova-docker
$ docker images # prova-docker should show up in the list
```

### Building Locally
You can also build `prova-docker` manually if you wish to make any changes to the
Dockerfile.

```sh
docker build -t prova .
docker run -d prova tail -f /dev/null # this will return an id for the container
docker exec -it <id> bash
```

## License
[MIT License](LICENSE)
