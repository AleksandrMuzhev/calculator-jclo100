# Используем официальный образ OpenJDK 17
FROM eclipse-temurin:17-jdk-jammy

VOLUME /tmp

# Копируем собранный jar-файл в контейнер
COPY target/calculator-0.0.1-SNAPSHOT.jar app.jar

# Запускаем приложение
ENTRYPOINT ["java", "-jar", "/app.jar"]