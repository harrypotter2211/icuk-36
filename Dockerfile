FROM tomcat:8-jre8
MAINTAINER "valaxytech@gmail.com"
COPY webapp/target/*.war /usr/local/tomcat/webapps/
