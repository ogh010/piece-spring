FROM openjdk:17-alpine

WORKDIR /

ARG JAR_FILE_PATH=/build/libs/piece-0.0.1-SNAPSHOT.jar

ENV ACTIVE_PROFILE="local"

COPY /${JAR_FILE_PATH} ROOT.jar

EXPOSE 9101

ENTRYPOINT ["java", "-jar", "-Xmx256m", "-Dspring.profiles.active=${ACTIVE_PROFILE}", "-Duser.timezone=Asia/Seoul", "-Dcom.sun.management.jmxremote", "-Dcom.sun.management.jmxremote.port=36010", "-Dcom.sun.management.jmxremote.rmi.port=36010", "-Djava.rmi.server.hostname=piece-spring", "-Dcom.sun.management.jmxremote.ssl=false", "-Dcom.sun.management.jmxremote.authenticate=false" , "ROOT.jar"]

