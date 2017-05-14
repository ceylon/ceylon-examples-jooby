# Jooby web framework with Ceylon

This project contains simple examples of the use of [Jooby] 
with Ceylon.

[Jooby]: http://jooby.org/

## Requirements

This project requires JDK 8 and [Ceylon] 1.3.2 or Ceylon IDE 
1.3.2 for IntelliJ or Eclipse.

[Ceylon]: https://ceylon-lang.org/download

## Compiling the examples

To compile the examples, either import this project into 
Ceylon IDE, or, in this directory, type:

    ceylon compile

## Running the examples

To run the Hello World example, in this directory, type:

    ceylon run eg.jooby

And go to <http://localhost:8080>.

## Assembling and running a fat jar

To assemble a "fat" jar, in this directory, type:

    ceylon fat-jar --force eg.jooby

Then, to run the resulting jar with `java`, type:

    java -jar eg.jooby-1.0.0.jar
