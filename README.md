# Vert.x Native Image

![Vert.x Badge](https://img.shields.io/badge/vert.x-4.4.4-purple.svg)

This application was generated using http://start.vertx.io

## Introduction
A native-image is a optimized translation of a Java application to OS/CPU specific native code. This new application will have more advantages compared to traditional JVM application, such as:
- faster startup times
- (usually) smaller heap sizes

Native image compilation has several restrictions (by design) of which most do not apply to Vert.x core code. This makes vert.x a very good candidate to write native images.

## Table Of Content
* [Introduction](#introduction)
* [Command Line](#command-line)
* [Reference](#reference)
* [Contact](#contact)

## Command Line
To launch your tests:
```
./mvnw clean test
```

To package your application:
```
./mvnw clean package
```

To run your application:
```
./mvnw clean compile exec:java
```

## Reference
* [Vert.x Documentation](https://vertx.io/docs/)
* [Vert.x Stack Overflow](https://stackoverflow.com/questions/tagged/vert.x?sort=newest&pageSize=15)
* [Vert.x User Group](https://groups.google.com/forum/?fromgroups#!forum/vertx)
* [Vert.x Discord](https://discord.gg/6ry7aqPWXy)
* [Vert.x Gitter](https://gitter.im/eclipse-vertx/vertx-users)

## Contact
Created by [Anas Juwaidi](mailto:anas.didi95@gmail.com)
