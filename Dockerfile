# Pull base image 
From tomcat:latest

# Maintainer 
MAINTAINER "naveednazar61@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
