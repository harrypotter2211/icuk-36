# Use Tomcat base image
FROM tomcat:8-jre8
MAINTAINER "valaxytech@gmail.com"

# Optional: clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR to ROOT.war so it becomes the default app
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080
