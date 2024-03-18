FROM  openjdk:17-buster
ARG JAR_FILE=target/*.jar
COPY resources ./resources
COPY ${JAR_FILE} jira-1.0.jar
ENTRYPOINT ["java","-jar","/jira-1.0.jar", "--spring.profiles.active=prod"]

#FROM openjdk:17-buster
#ARG JAR_FILE=target/*.jar
#COPY resources ./resources
#COPY ${JAR_FILE} jira-1.0.jar
#ENTRYPOINT ["java","-jar","/jira-1.0.jar"]

#FROM maven:3.9-eclipse-temurin-17
#WORKDIR /app
#COPY pom.xml .
#RUN mvn dependency:go-offline
#COPY src ./src
#COPY resources ./resources
#RUN mvn clean package -DskipTests
#RUN mv ./target/*.jar ./jira.jar
#ENTRYPOINT ["java","-jar","/app/jira.jar", "--spring.profiles.active=prod"]