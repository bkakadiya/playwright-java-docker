# Sample project demostrating playwright java running in  Docker container

- Clone this repo

- Run maven package to get required libs and prepare executable jar 
```console
mvn package
```

- Build image

```console
docker build -t playwright-java-docker:1.0.0 .
```

- Run the image. That should print title of http://playwright.dev

```console
docker run -t playwright-java-docker:1.0.0
```

Output should be: 
Starting playwright...
Title of http://playwright.dev is: 
Fast and reliable end-to-end testing for modern web apps | Playwright

- Optionally: you can start bash command first and then run java command

```console
docker run --rm -it --entrypoint bash playwright-java-docker:1.0.0
```

This will open a command prompt into '/usr/local/myapp123' of a container 

Run that executable jar

```console
java -jar app.jar
```

This should print same output as earlier docker run (same as #4)
