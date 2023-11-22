FROM openjdk:22-slim
LABEL maintainer="Dmitri Rubinstein"

RUN mkdir -p /usr/share/k8s-java-example/bin

ADD /target/k8s-java-example-*SNAPSHOT.jar /usr/share/k8s-java-example/bin/k8s-java-example.jar

WORKDIR /usr/share/k8s-java-example

ENTRYPOINT ["java", "-jar", "bin/k8s-java-example.jar"]
