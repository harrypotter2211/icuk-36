FROM tomcat:8-jre8
MAINTAINER "valaxytech@gmail.com"

# Optional: Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file from webapp/target to Tomcat's webapps directory
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat default port
EXPOSE 8080
