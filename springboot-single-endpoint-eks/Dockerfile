FROM openjdk:17
ADD target/springboot-single-endpoint-eks.jar springboot-single-endpoint-eks.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "springboot-single-endpoint-eks.jar"]