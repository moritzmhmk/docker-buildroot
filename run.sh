#!/bin/bash
[ -d "$1" ] || { echo "usage: ./run.sh project_directory"; exit; }

project_directory="$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")"

docker build -t docker-buildroot .
docker run \
-it \
--mount src="$project_directory",target=/project,type=bind \
--workdir /project/ \
docker-buildroot
