FROM tomcat:latest

ADD /var/lib/jenkins/workspace/webapp/target/HelloWorld.war /usr/local/tomcat/MyWebApp/

EXPOSE 8080

CMD ["catalina.sh", "run"]
