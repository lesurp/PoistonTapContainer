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

Used by NodeJS to determine the dependencies of the javascript file

* server.js

The file named backend_server.js in the original PoisonTap repository.
If you want to rename it, you also need to modify the file **package.json**


## Version

The container has been pushed using the backend_server.js filed published in c0a406dfd04c3aab6e7875cdf8df13b947413f58 ("First release") in the original [PoisonTap repository] (https://github.com/samyk/poisontap)
