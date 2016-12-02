# PoisonTap container

## Why a container ?

This Docker container can be used if you want to use the [PoisonTap vulnerability] (https://github.com/samyk/poisontap).

Why you want to use it:

* No problem of NodeJS version (useful for Debian users)
* Safer (so you do not really have to read the *.js code ; but then you probably should read the Dockerfile anyway ?)
* Easy to uninstall (especially if you don't use NodeJS otherwise)

## The files	

* .dockerignore and Dockerfile

Docker specific files.

* package.json

Used by NodeJS to determine the dependencies of the javascript file (only websocket for
now)

* backend_server.js

The file of the same named found in the original PoisonTap repository.
If you want to rename it, you also need to modify the file **package.json**

## Usage

A script, `run.sh` can be used to control the container/image:

````
run.sh build # build the image
run.sh start # run a container from the image
run.sh restart # restart the container (should not be necessary ?)
run.sh remove_container # stop and delete the container
run.sh remove_image # remove the container and the image
````

## Version

The container has been pushed using the backend_server.js filed published in c0a406dfd04c3aab6e7875cdf8df13b947413f58 ("First release") in the original [PoisonTap repository] (https://github.com/samyk/poisontap)
