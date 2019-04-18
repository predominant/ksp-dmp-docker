# KSP Dark Multiplayer server

Project page: [https://d-mp.org/](https://d-mp.org/)
Source: [godarklight/DarkMultiPlayer](https://github.com/godarklight/DarkMultiPlayer)
Dockerhub: [julman99/ksp-dmp](https://cloud.docker.com/repository/registry-1.docker.io/julman99/ksp-dmp)

## Running

```
docker run --name dmp -p 6702:6702 \
          -v /path/to/universe:/opt/dmp/Universe \
          -v /path/to/config:/opt/dmp/Config \
          julman99/ksp-dmp
```