FROM tomcat:8.5.27-jre8

USER root
RUN apt-get update && apt-get install -y

ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
ADD context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
ADD server.xml /usr/local/tomcat/conf/
ADD spring-boot-package-war/target/spring-boot-package-war-ofir_10.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]

EXPOSE 8082
