yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
yum --enablerepo=epel install -y wget gawk make gcc automake byacc gmp mpir-devel libdb-devel xz
wget https://udomain.dl.sourceforge.net/project/gnucobol/gnucobol/3.1/gnucobol-3.1.2.tar.xz >/dev/null >/dev/null 2>&1
xz -d gnucobol-3.1.2.tar.xz
ls -l
tar xvf gnucobol-3.1.2.tar.xz >/dev/null 2>&1
ls -l
cd gnucobol-3.1.2
./configure
make
make install
echo '/usr/local/lib' > /etc/ld.so.conf.d/gnu-cobol-3.0.conf
ldconfig