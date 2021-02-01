FROM amazon/aws-lambda-python
COPY app.py   ./
RUN uname -a; cat /etc/os-release
RUN wget https://raw.githubusercontent.com/awsengineer/awsome-builder/main/AWSome.cbl 
RUN cobc -free -x -o AWSome.exe AWSome.cbl
CMD ["app.handler"]
