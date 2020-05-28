FROM openjdk:7

COPY --from=build ES2-LEIPL-2020/src/main/java/es2-leipl.jar /src/main/java/

WORKDIR /src/main/java/

EXPOSE 8080

CMD ["java", "-jar", "es2-leipl.jar"]
