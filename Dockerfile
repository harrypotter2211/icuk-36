FROM tomcat:8-jre8
MAINTAINER "valaxytech@gmail.com"

# Remove default Tomcat webapps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the webapps directory
COPY webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat (CMD is already set by base image, so no need to override it)
