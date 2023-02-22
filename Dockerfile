FROM tomcat:latest

ADD ./target/HelloWorld.war /usr/local/tomcat/MyWebApp/

EXPOSE 8080

CMD ["catalina.sh", "run"]
