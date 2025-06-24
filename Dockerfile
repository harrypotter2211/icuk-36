# Pull base image 
From tomcat:8-jre8

# Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY target/myapp-1.0.war /usr/local/tomcat/webapps/


