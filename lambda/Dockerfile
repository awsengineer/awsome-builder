FROM ezzobad/awsome-builder:cobol-base
COPY app.py  ./
RUN  [ -d /usr/local/bin ] || mkdir -p /usr/local/bin && \
     wget --no-cache https://raw.githubusercontent.com/awsengineer/awsome-builder/main/AWSome.cbl && \
     cobc -free -x -o /usr/local/bin/cobol_app AWSome.cbl && \
     echo 'export PATH=$PATH:/usr/local/bin' >> ~/.profile
CMD ["app.handler"]