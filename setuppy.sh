sudo apt-get install -y build-essential \
checkinstall \
libreadline-gplv2-dev \
libncursesw5-dev \
libssl-dev \
libsqlite3-dev \
tk-dev \
libgdbm-dev \
libc6-dev \
libbz2-dev \
zlib1g-dev \
openssl \
libffi-dev \
python3-dev \
python3-setuptools \
wget

# Prepare to build
mkdir /tmp/Python38
cd /tmp/Python38

# Pull down Python 3.7, build, and install
wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tar.xz
tar xvf Python-3.8.0.tar.xz
cd /tmp/Python38/Python-3.8.0
./configure
sudo make altinstall
