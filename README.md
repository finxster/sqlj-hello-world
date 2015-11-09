# sqlj-hello-world
Simple Hello World's app for SQLJ tests

##Requirements
jdk1.6.0_45

##How to start
A good start is reading all articles about SQLJ that you can find. A good one is: http://archive.oreilly.com/pub/a/onjava/2001/12/05/learning_sqlj.html

This article will explain in details how SQLJ works and how to configure an enviroment.

##Dependencies
It wasn't easy to find SQLJ's dependencies (runtime.jar, translate.jar and compatible jdbc driver), but they're in /lib folder. :D

To install the dependencies in your local repository (you'll need to do this only once):

###On Windows
Just run `install-dependencies.bat`.

```
install-dependencies.bat
```

###On Linux
You'll need to give execution permission to `install-dependencies.sh`.
```
chmod +x install-dependencies.sh
```

And then, execute:
```
./install-dependencies.sh
``` 

This will install the dependencies under `$M2_REPO/com/oracle`. 

##Database
I'm using Oracle Express Edition for this tests. You can download it [here](http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html).

In this example, the SYSTEM/SYS password must be 'ac4success'.

##Compiling/Processing SQLJ's files
You'll need invoke sqlj-maven-plugin to process the sqlj's files, and transform them into .java files.

You can run:

```java
mvn sqlj:sqlj compile
```

or simply:

```java
mvn compile
```

##Running
```java
mvn exec:java
```

This will invoke main method in our generated `HelloWorld.java` in `target/generated-sources/sqlj` folder. The [build-helper-maven-plugin](http://www.mojohaus.org/build-helper-maven-plugin/) will compile our generated file for us.

The output must have something like this:
```
[INFO] Scanning for projects...
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building SQLJ Hello World 0.0.1-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- exec-maven-plugin:1.4.0:java (default-cli) @ sqlj-hello-world ---
Hello World! The current date is 2015-11-05
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 1.051s
[INFO] Finished at: Thu Nov 05 19:06:25 BRST 2015
[INFO] Final Memory: 10M/981M
[INFO] ------------------------------------------------------------------------
```

Note, the output for HelloWorld's program is: `Hello World! The current date is 2015-11-05`

