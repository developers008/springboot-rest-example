FROM java:8
WORKDIR /usr/src
MAINTAINER Amit "amitpandey.pandey19@gmail.com"
COPY . .
EXPOSE 3000

CMD java -jar /target/books-example-1.0-SNAPSHOT.jar
