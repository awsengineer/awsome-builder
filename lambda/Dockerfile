FROM amazon/aws-lambda-python
COPY app.py   ./
RUN yum install wget curl -y
RUN wget https://raw.githubusercontent.com/awsengineer/awsome-builder/main/AWSome.cbl 
RUN cobc -free -x -o AWSome.exe AWSome.cbl
CMD ["app.handler"]
