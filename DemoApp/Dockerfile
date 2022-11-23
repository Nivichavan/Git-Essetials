#FROM java-11-openjdk-amd64
#LABEL maintainer="Nivedita Chavan"
#Add target/DemoApp-0.0.1-SNAPSHOT.jar docker-demoapp.jar
#ENTRYPOINT ["java", "-jar", "DemoApp.jar"]


FROM java-11-openjdk-amd64
ARG JAR_FILE=target/DemoApp-0.0.1-SNAPSHOT.jar
COPY DemoApp-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]