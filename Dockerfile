FROM java:8
WORKDIR /usr/src
MAINTAINER Kiran "kiranbdvt@gmail.com"
COPY . .
EXPOSE 9080

CMD sudo java -jar /target/books-example-1.0-SNAPSHOT.jar
