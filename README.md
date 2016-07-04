# 🐳 local-npm

`Dockerfile` to build a [local-npm](https://github.com/nolanlawson/local-npm) container image.

## Requirements

Obviously you will need [Docker](https://www.docker.com/) to run, build and update the local-npm container. Thats all.

## How to use the local-npm docker

Using the local-npm docker is quite easy. Simply run one of the automated builds which are available on [Dockerhub](https://hub.docker.com/r/orlandohohmeier/local-npm/) and configure npm to use your new local registry.

Use the following command to pull the latest image and run it (recommended method of installation):

	$ docker run -d -v "$PWD/data":/data -p 5080:5080 orlandohohmeier/local-npm:latest

_This command will start the `local-npm` container, mount a data volume (working-directory/data) as `/data` and map the container port (`5080`- default local-npm port) to the host port (`5080`)_

Then configure npm to use your shine new local npm registry with the following command:

	$ npm set registry http://0.0.0.0:5080

Use the following command to switch back to the old default registry:

	$ npm set registry https://registry.npmjs.org

For a full list of docker commands and npm configuration and options please see:

[https://docs.docker.com/engine/reference/commandline/cli/](https://docs.docker.com/engine/reference/commandline/cli/)
[https://docs.npmjs.com/cli/npm](https://docs.npmjs.com/cli/npm)

## License

Apache 2.0
