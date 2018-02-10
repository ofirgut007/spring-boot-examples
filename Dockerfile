FROM tomcat:8.5.15-jre8

RUN apt-get update && apt-get install -y

ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
ADD spring-boot-package-war/target/spring-boot-package-war-ofir_*.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]

EXPOSE 8080