# we are extending everything from tomcat:8.0 image ...
FROM tomcat
COPY bookstore.war /usr/local/tomcat/webapps/
EXPOSE 8080