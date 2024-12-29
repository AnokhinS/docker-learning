FROM eclipse-temurin:21-jdk
WORKDIR /usr/src/app
EXPOSE 8080

COPY . . 
RUN apt-get update && apt-get install -y maven
RUN mvn clean install -Pproduction

ENTRYPOINT ["java", "-jar", "target/my-app-1.0-SNAPSHOT.jar"]
