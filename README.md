# Xv64 Compiler Suite

This repo contains the compiler suite necessary for developing the Xv64 operating system. Compiled docker images of this compiler suite can be obtained from docker hub:

`docker pull xv64/compiler:latest`

## Why is this needed?

Compiling an operating system requires specific compiler setups. Additionally, depending on the host OS, the compiler configuration can get even more complicated. Therefore, this repo exists to create a single (multi-arch) Docker image that can be used regardless of the host OS/architecture.

## How do you use this?

You shouldn't have to make direct use of this project. However, if you are curious, please see the [Dockerfile in the Xv64/OS repo](https://github.com/Xv64/OS/blob/master/Dockerfile) for an example of how it is used automatically by that project.
