FROM java:8u111

WORKDIR /app
ADD . /app

RUN ./mvnw compile
RUN ./mvnw test-compile
RUN ./mvnw test
RUN ./mvnw dependency:go-offline
