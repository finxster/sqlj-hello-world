# sqlj-hello-world
Simple Hello World's app for SQLJ tests

##Requirements
jdk1.6.0_45

##How to start
A good start is reading all articles about SQLJ that you can find. A good one is: http://archive.oreilly.com/pub/a/onjava/2001/12/05/learning_sqlj.html

This article will explain in details how SQLJ works and how to configure an enviroment.

##Dependencies
It wasn't easy to find SQLJ's dependencies (runtime.jar and translate.jar). You can download it [here](http://www.oracle.com/technetwork/database/features/jdbc/index-091264.html), from Oracle's Database client. 
Or then, you can download from my dropbox ([https://www.dropbox.com/s/lmi7txwk4xx15v7/sqlj-runtime-1.0.jar?dl=0] and [https://www.dropbox.com/s/lmi7txwk4xx15v7/sqlj-runtime-1.0.jar?dl=0]). I changed the names when I installed them in my local repository.

You'll need to install both jars and oracle jdbc driver (you can download it [here](https://www.dropbox.com/s/0d0740lv1n9wgs8/sqlj-ojdbc14-1.0.jar?dl=0)) in your local repository, too.

To install the jars in your local repository:
```java
mvn install:install-file -Dfile=sqlj-translator-1.0.jar -DgroupId=com.oracle -DartifactId=sqlj-translator -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=sqlj-runtime-1.0.jar -DgroupId=com.oracle -DartifactId=sqlj-runtime -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=sqlj-ojdbc14-1.0.jar -DgroupId=com.oracle -DartifactId=sqlj-ojdbc14 -Dversion=1.0 -Dpackaging=jar
```

##Running
```java
mvn test
```

This will process `HelloWorld.sqlj` in `src/main/resources/sqlj` folder, and create a `HelloWorld.java` in `src/main/java/com/avenuecode/sqlj`.

Just run HelloWorld and the output must have something like this:
`Hello World! The current date is 2015-11-04`
