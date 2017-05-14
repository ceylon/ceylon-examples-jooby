# Jooby web framework with Ceylon

This project contains simple examples of the use of [Jooby] 
with Ceylon.

[Jooby]: http://jooby.org/

## Requirements

This project requires JDK 8 and [Ceylon] 1.3.2 or Ceylon IDE 
1.3.2 for IntelliJ or Eclipse.

To build and run the example from the command line, you do 
*not* need to install Ceylon, since the `ceylonb` command is
self-installing.

[Ceylon]: https://ceylon-lang.org/download

## Compiling the examples

To compile the examples, either import this project into 
Ceylon IDE, or, in this directory, type:

    ./ceylonb compile

## Running the examples

To run the Hello World example, in this directory, type:

    ./ceylonb run eg.jooby.simple

And go to <http://localhost:8080>.

To run the REST example, in this directory, type:

    ./ceylonb run eg.jooby.rest

And go to <http://localhost:8080/mvc/greeting/Trompon>.

## Assembling and running a fat jar

To assemble a "fat" jar, in this directory, type:

    ./ceylonb fat-jar --force eg.jooby.simple

Or:

    ./ceylonb fat-jar --force eg.jooby.rest

Then, to run the resulting jar with `java`, type:

    java -jar eg.jooby.simple-1.0.0.jar

Or:

    java -jar eg.jooby.rest-1.0.0.jar

