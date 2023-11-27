FROM eclipse-temurin:17

RUN mkdir /opt/app
COPY target/back-end-1.0-SNAPSHOT-jar-with-dependencies.jar /opt/app
EXPOSE 8080
CMD ["java", "-jar", "/opt/app/back-end-1.0-SNAPSHOT-jar-with-dependencies.jar"]