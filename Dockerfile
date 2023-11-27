FROM eclipse-temurin:17

RUN apt update && apt install -y busybox && rm -rf /var/lib/apt/lists/*

RUN mkdir /opt/app
COPY back-end/target/back-end-1.0-SNAPSHOT-jar-with-dependencies.jar /opt/app

RUN mkdir /opt/front
COPY front-end/build /opt/front


EXPOSE 8080 3000
CMD ["/bin/bash", "-c", "java -jar /opt/app/back-end-1.0-SNAPSHOT-jar-with-dependencies.jar & busybox httpd -f -v -p 3000 -h /opt/front"]
