# Docker Frontend Builder

Here is a very simple template to use Docker to build your frontend and a container to run it. Idea is to avoid polluting local machine with all kinds of libraries, have standardized environment for doing build no matter where, and to have a controlled environment doing the build.

## How to use

These codes are not very useful to be used as they are, mainly as a starting point for what you actually need. Feel free to use, copy, modify as you like and need.

Dockerfile contains the two phase build. It should actually work pretty nicely as long as you build your frontend with Node V10, and wish to deploy the built solution to an NGINX container. Note that final container will contain whatever you generate in build folder.

Edit package.json file to define your dependencies and build process. Right now it will just copy index.html from root to new containers build folder.

Edit nginx.conf to define how you wish to server your frontend.

## NOTE! NOT PRODUCTION READY BY FAR; JUST FOR IDEAS


