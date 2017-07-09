FROM java:8u111

WORKDIR /app
ADD . /app

RUN ./mvnw clean install -DskipTests

CMD ./mvnw spring-boot:run
