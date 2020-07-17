sudo apt update
sudo apt upgrade


sudo apt intsall -y git \
vim-gtk \
mariadb-server \
mariadb-client \
ruby \
sqlite3 \
xmlrpc-core-c3-dev \
libxmlrpc-c++8-dev \
ssh \
flex \
libxml2-dev \
libvncserver-dev \
cmake



git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo cp vimrc /etc/vim/vimrc

#setup python3
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

mkdir ~/Documents/dev
git clone https://github.com/theunderd0g/asd ~/Documents/dev/asd
sudo python3 ~/Documents/dev/asd/setup.py develop

echo "alias py=\"python3\"" >> ~/.bashrc
echo "alias pip=\"pip3\"" >> ~/.bashrc

## not installing libzmq, causes hmserver error 
git clone https://github.com/zeromq/libzmq
cd libzmq
mkdir cmake-build && cd cmake-build
cmake .. && make -j 4
make test
sudo make install
sudo ldconfig
