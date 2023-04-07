# Get the latest version of Playwright
FROM mcr.microsoft.com/playwright/java:v1.32.0-focal


ARG JAR_FILE=target/playwright-java-docker*.jar
ARG JAR_LIB_FILE=target/lib/

# cd /usr/local/myapp123
WORKDIR /usr/local/myapp123

# copy target/playwright-java-docker*.jar /usr/local/myapp123/app.jar
COPY ${JAR_FILE} app.jar

# copy project dependencies
# cp -rf target/lib/  /usr/local/myapp123/lib
ADD ${JAR_LIB_FILE} lib/

# java -jar /usr/local/myapp123/app.jar
ENTRYPOINT ["java","-jar","app.jar"]