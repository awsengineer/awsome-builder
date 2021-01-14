FROM debian:latest

RUN apt-get update && apt-get install -y open-cobol

RUN mkdir /src

COPY ./AWSome.cbl /src

RUN cd /src && cobc -free -x -o AWSome.exe AWSome.cbl

CMD "./src/AWSome.exe"
