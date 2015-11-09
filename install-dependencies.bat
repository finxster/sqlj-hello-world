@echo off
echo installing sqlj-translator (translator.jar)
echo mvn install:install-file -Dfile=lib/translator.jar -DgroupId=com.oracle -DartifactId=sqlj-translator -Dversion=1.0 -Dpackaging=jar -DgeneratePom=true
call mvn install:install-file -Dfile=lib/translator.jar -DgroupId=com.oracle -DartifactId=sqlj-translator -Dversion=1.0 -Dpackaging=jar -DgeneratePom=true
@echo.
@echo.

echo installing ssqlj-runtime (runtime12.jar)
echo mvn install:install-file -Dfile=lib/runtime12.jar -DgroupId=com.oracle -DartifactId=sqlj-runtime -Dversion=1.0 -Dpackaging=jar -DgeneratePom=true
call mvn install:install-file -Dfile=lib/runtime12.jar -DgroupId=com.oracle -DartifactId=sqlj-runtime -Dversion=1.0 -Dpackaging=jar -DgeneratePom=true
@echo.
@echo.

echo installing sqlj-ojdbc14 (classes12.zip) 
echo mvn install:install-file -Dfile=lib/classes12.zip -DgroupId=com.oracle -DartifactId=sqlj-ojdbc14 -Dversion=1.0 -Dpackaging=jar -DgeneratePom=true
call mvn install:install-file -Dfile=lib/classes12.zip -DgroupId=com.oracle -DartifactId=sqlj-ojdbc14 -Dversion=1.0 -Dpackaging=jar -DgeneratePom=true
@echo.
@echo.

echo Your repository is now ready to compile this project.
pause