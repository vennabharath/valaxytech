# Pull base image 
#From tomcat:8-jre8 

# Maintainer 
#MAINTAINER "valaxytech@gmail.com" 
#COPY ./webapp.war /usr/local/tomcat/webapps


FROM openjdk
EXPOSE 8080
ADD target/webapp.war webapp.war
ENTRYPOINT ["java", "-jar", "/webapp.war"]