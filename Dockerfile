# Dockerfile cho Eureka Server (tương tự áp dụng cho các dịch vụ khác)
FROM bellsoft/liberica-openjdk-alpine
# Cài thêm curl
RUN apk update && apk add --no-cache curl

ARG JAR_FILE=target/eureka-server.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
