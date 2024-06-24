FROM gradle:8.5-jdk17 AS builder
WORKDIR /app
COPY gradlew build.gradle.kts settings.gradle.kts ./
COPY gradle gradle
COPY src src
RUN ./gradlew build --no-daemon

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=builder /app/build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]