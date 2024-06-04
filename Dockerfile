FROM openjdk:8-alpine

WORKDIR ./

ARG JAR_FILE_PATH=./build/libs/piece-0.0.1-SNAPSHOT.jar

ENV ACTIVE_PROFILE="local"

COPY /${JAR_FILE_PATH} ROOT.jar

EXPOSE 9101

ENTRYPOINT ["java", "-jar", "-Xincgc", "-Xmx512m", "-Duser.timezone=Asia/Seoul", "ROOT.jar"]

