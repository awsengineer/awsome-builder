FROM debian:latest

RUN apt-get update && apt-get install -y open-cobol

RUN mkdir /src

COPY ./helloworld.cobol /src

RUN cd /src && cobc -free -x -o helloworld-exe helloworld.cobol

CMD "./src/helloworld-exe"
