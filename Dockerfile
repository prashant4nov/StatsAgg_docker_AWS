FROM tomcat:7-jre8
MAINTAINER prashant4nov

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY StatsAgg.war /usr/local/tomcat/webapps/ROOT.war
COPY setenv.sh /usr/local/tomcat/bin/setenv.sh
COPY application.properties /home/application.properties
COPY database.properties /home/database.properties
COPY logback_config.xml /home/logback_config.xml
COPY server.xml /usr/local/tomcat/conf/server.xml

# private and public mapping
EXPOSE 20000

CMD ["catalina.sh", "run"]

# docker build -t image_name . 
# docker run (-it or -d) -P --name container_name image_name catalina.sh run && tail -f /usr/local/tomcat/logs
# docker ps -l
# docker port container_name

#docker run -d -P --name container_name image_name catalina.sh run && /bin/bash

#docker run -it -P --name container_nam_ ima catalina.sh run && tail -f /usr/local/tomcat/logs

#docker run -it -p 80:8080 --name container_nam_ ima catalina.sh run && tail -f /usr/local/tomcat/logs