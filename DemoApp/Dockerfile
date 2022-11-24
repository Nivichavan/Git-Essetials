#FROM java-11-openjdk-amd64
#LABEL maintainer="Nivedita Chavan"
#Add target/DemoApp-0.0.1-SNAPSHOT.jar docker-demoapp.jar
#ENTRYPOINT ["java", "-jar", "DemoApp.jar"]

FROM maven:3.6.3-openjdk-11-slim as BUILDER
ARG VERSION=0.0.1-SNAPSHOT
WORKDIR /build/
COPY pom.xml /build/
COPY src /build/src/

RUN mvn clean package
COPY target/DemoApp-${VERSION}.jar target/demoapp.jar

FROM openjdk:11.0.11-jre-slim
WORKDIR /app/

COPY --from=BUILDER /build/target/demoapp.jar /app/
CMD java -jar /app/demoapp.jar
