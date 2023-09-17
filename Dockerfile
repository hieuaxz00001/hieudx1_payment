FROM openjdk:17-oracle
LABEL maintainer="author@hieudx.com"
EXPOSE 8083
COPY target/payment-1.0.0.jar payment.jar
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","/payment.jar"]