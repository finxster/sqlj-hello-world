# sqlj-hello-world
Simple Hello World's app for SQLJ tests

##Requirements
jdk1.6.0_45

##How to start
A good start is reading all articles about SQLJ that you can find. A good one is: http://archive.oreilly.com/pub/a/onjava/2001/12/05/learning_sqlj.html

This article will explain in details how SQLJ works and how to configure an enviroment.

##Dependencies
It wasn't easy to find SQLJ's dependencies (runtime.jar, translate.jar and compatible jdbc driver), but they're in /lib folder. :D

To install the dependencies in your local repository, just run the `initialize` maven phase:

```java
mvn intialize
```

This will install the dependencies under `$M2_REPO/com/oracle`. 


##Running
```java
mvn test
```

This will process `HelloWorld.sqlj` in `src/main/resources/sqlj` folder, and create a `HelloWorld.java` in `src/main/java/com/avenuecode/sqlj`.

Just run HelloWorld and the output must have something like this:
`Hello World! The current date is 2015-11-04`
