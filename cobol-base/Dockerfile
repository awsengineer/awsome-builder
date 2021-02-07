FROM amazonlinux
RUN yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y && \
    yum --enablerepo=epel install -y tar wget gawk make gcc automake byacc gmp mpir-devel libdb-devel xz >/dev/null 2>&1 && \
    wget https://raw.githubusercontent.com/awsengineer/awsome-builder/main/gnucobol-3.1.2.tar.xz >/dev/null >/dev/null 2>&1 && \
    tar xvf gnucobol-3.1.2.tar.xz && \
    cd gnucobol-3.1.2 && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -fr gnucobol-3.1.2 && rm gnucobol-3.1.2.tar.xz && \
    echo '/usr/local/lib' > /etc/ld.so.conf.d/gnu-cobol.conf && \
    /sbin/ldconfig
    wget https://raw.githubusercontent.com/awsengineer/awsome-builder/main/AWSome.cbl -O sample.cbl
    cobc -free -x -o /usr/local/bin/cobol_app sample.cbl

CMD /usr/local/bin/cobol_app
