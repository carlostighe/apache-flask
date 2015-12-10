# Debian - Python - Mod_Wsgi

This is the repo for running a python app under `mod_wsgi` on apache in a docker container

Many of the docker repo's out there use flask local server in their images.
This repo is for a more production ready environment.

This repo will be built in stages
It will contain a demo app written using the Flask framework

I will be using [this Flask app](http://code.tutsplus.com/tutorials/an-introduction-to-pythons-flask-framework--net-28822) for the repo

As of commit f232e60c39fcd480fbabab6308eeaf24f4a9d5ae
The command to run the `Dockerfile` is:

`docker run -d -p 80:80 --name <name> apache-flask`