
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#

#FROM tomcat:8.0
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
#COPY --from=build /home/app/target/thermoconnect-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/root.jar

FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/thermoconnect-0.0.1-SNAPSHOT.jar /usr/local/lib/app.jar
COPY staticFile /staticFile
EXPOSE 8081
ENTRYPOINT ["java","-jar","/usr/local/lib/app.jar"]


# FROM openjdk:11-jre-slim
# RUN addgroup -S spring && adduser -S spring -G spring
# USER spring:spring
# ARG JAR_FILE=target/*.jar
# COPY --from=build /home/app/target/thermoconnect-0.0.1-SNAPSHOT.jar app.jar
# COPY staticFile /staticFile
# EXPOSE 8081
# ENTRYPOINT ["java","-jar","/app.jar"]