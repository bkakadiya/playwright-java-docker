This is a sample of playwright java creating and running in to Docker container

1. Clone this repo
2. Run maven package to get required libs and prepare executable jar 
mvn package
3. Build image
docker build -t playwright-java-docker:1.0.0 .
4. Run the image. That should print title of http://playwright.dev
docker run -t playwright-java-docker:1.0.0

Output should be: 
Starting playwright...
Title of http://playwright.dev is: 
Fast and reliable end-to-end testing for modern web apps | Playwright

5. Optionally you can start bash command first and then run java command

a. 
docker run --rm -it --entrypoint bash playwright-java-docker:1.0.0

This will open a command prompt into '/usr/local/myapp123' of a container 

b. Run that executable jar

java -jar app.jar

This should print same output as earlier docker run (same as #4)