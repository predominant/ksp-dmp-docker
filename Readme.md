KSP Dark Multiplayer server

# Running

```
docker run --name dmp -p 6702:6702 \
          -v /path/to/universe:/opt/dmp/Universe \
          -v /path/to/config:/opt/dmp/Config \
          julman99/ksp-dmp
```