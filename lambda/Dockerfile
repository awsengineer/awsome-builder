FROM amazon/aws-lambda-python
COPY app.py   ./
RUN wget https://raw.githubusercontent.com/awsengineer/awsome-builder/main/lambda/install_cobol_compliter.sh
RUN bash install_cobol_compliter.sh
RUN wget https://raw.githubusercontent.com/awsengineer/awsome-builder/main/AWSome.cbl 
RUN cobc -free -x -o AWSome.exe AWSome.cbl
RUN ./AWSome.exe
CMD ["app.handler"]