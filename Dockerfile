FROM tomcat:8.0

ADD **/*.war /usr/local/share/tomcat/webapps

EXPOSE 80

CMD ["catalina.sh", "run"]