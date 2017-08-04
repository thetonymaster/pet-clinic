FROM java:8u111

WORKDIR /app
ADD . /app

RUN ./mvnw compile
RUN ./mvnw test-compile
RUN ./mvnw process-test-resources	
RUN ./mvnw install -DskipTests

CMD ./mvnw spring-boot:run
