yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
yum --enablerepo=epel install -y tar wget gawk make gcc automake byacc gmp mpir-devel libdb-devel xz >/dev/null 2>&1
wget https://raw.githubusercontent.com/awsengineer/awsome-builder/main/gnucobol-3.1.2.tar.xz >/dev/null >/dev/null 2>&1
xz -d gnucobol-3.1.2.tar.xz
tar xvf gnucobol-3.1.2.tar >/dev/null 2>&1
cd gnucobol-3.1.2
# ./configure
# make
# make install
# echo '/usr/local/lib' > /etc/ld.so.conf.d/gnu-cobol-3.0.conf
# /sbin/ldconfig
