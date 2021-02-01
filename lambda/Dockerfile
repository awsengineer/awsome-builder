FROM amazon/aws-lambda-python
COPY app.py   ./
RUN curl -s https://raw.githubusercontent.com/awsengineer/awsome-builder/main/lambda/install_cobol_compiler.sh -o install_cobol_compiler.sh
RUN chmod +x install_cobol_compiler.sh && ./install_cobol_compiler.sh
RUN wget https://raw.githubusercontent.com/awsengineer/awsome-builder/main/AWSome.cbl 
RUN cobc -free -x -o AWSome.exe AWSome.cbl
RUN ./AWSome.exe
CMD ["app.handler"]