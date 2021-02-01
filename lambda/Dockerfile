FROM amazon/aws-lambda-python
COPY app.py   ./
RUN apt-get update -y; apt-get install open-cobol -y
RUN wget https://raw.githubusercontent.com/awsengineer/awsome-builder/main/AWSome.cbl 
RUN cobc -free -x -o AWSome.exe AWSome.cbl
CMD ["app.handler"]
