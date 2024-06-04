FROM openjdk:17-alpine

WORKDIR /

ARG JAR_FILE_PATH=/build/libs/piece-0.0.1-SNAPSHOT.jar

ENV ACTIVE_PROFILE="local"

COPY /${JAR_FILE_PATH} ROOT.jar

EXPOSE 9101

ENTRYPOINT ["java", "-jar", "-Xmx512m", "-Dspring.profiles.active=${ACTIVE_PROFILE}", "-Duser.timezone=Asia/Seoul", "ROOT.jar"]

