# Debian - Python - Mod_Wsgi

This is the repo for running a python app under `mod_wsgi` on apache in a docker container

Many of the docker repo's out there use flask local server in their images.
This repo is for a more production ready environment.

This repo will be built in stages
It will contain a demo app written using the Flask framework

I will be using [this Flask app](http://code.tutsplus.com/tutorials/an-introduction-to-pythons-flask-framework--net-28822) for the repo

As of [commit f232e60c39fcd480fbabab6308eeaf24f4a9d5ae](https://github.com/Craicerjack/apache-flask/tree/f232e60c39fcd480fbabab6308eeaf24f4a9d5ae)
The command to run the `Dockerfile` is:

`docker run -d -p 80:80 --name <name> apache-flask`

Alternatively, you can use docker-compose with:

`docker-compose up -d`

 * Download the repo
 * build the image: `docker build -t apache-flask .`



#### The docker file runs through the following steps:  

 - get debian bullseye-slim image.  
 - install the requirements for python and flask on debian  
 - copy over the `requirements.txt` file and run `pip install` on it  
 - This is copied separately so that the dependencies are cached and dont need to run everytime the image is rebuilt  
 - copy over the application config file for apache  
 - copy over the `.wsgi` file. This is the entrypoint for our application, the `run.py` file, and the application directory  
 - enable the new apache config file and headers   
 - dissable the default apache config file  
 - expose port 80  
 - point the container to the application directory  
 - the run command. 
