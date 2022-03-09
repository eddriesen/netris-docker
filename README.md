# netris-docker

Forked from https://github.com/nannal/netris-docker
Tweaked it to the latest version of netris and fixed the hang on ssh keygen on second boot. -> downside atm is a non persistent ssh key when updating the docker image.

Todo:
* Make ssh key persistent across container / image updates via volume.
