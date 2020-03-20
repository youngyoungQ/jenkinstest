FROM openjdk:8
ENTRYPOINT ["/usr/bin/java", "-jar", "/app.jar"]
ARG JAR_FILE
ADD ${JAR_FILE} /app.jar
EXPOSE 8765