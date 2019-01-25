#!/bin/bash

DIRNAME=$1

#Create the directory
mkdir $DIRNAME

#Enter the directory
cd $DIRNAME

#Add the JUnit package
cp /usr/share/java/junit.jar .

#Extract it...
jar xvf junit.jar

#Add the Hamcrest package
cp /usr/share/java/hamcrest/core.jar .

#Extract it...
jar xvf core.jar

#Ready!
echo "Project directory $DIRNAME is now ready!"
