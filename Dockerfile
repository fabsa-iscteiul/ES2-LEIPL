FROM openjdk:7

CMD ["ECHO", "$PATH"]

COPY es2-leipl.jar /src/main/java/

WORKDIR /src/main/java/

EXPOSE 8080

CMD ["java", "-jar", "es2-leipl.jar"]
