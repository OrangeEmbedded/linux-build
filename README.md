# linux-build
Dockerfile for linux build machine

# Run command
```
$ docker pull orangeembedded/linux-build
$ docker run --rm -it --name "$(basename `pwd`)-build" -v `pwd`:/root/$(basename `pwd`) -w /root/$(basename `pwd`) orangeembedded/linux-build
$ make <target>
```
