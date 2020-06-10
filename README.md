#### Run Updates

```bash
sudo apt-get update
sudo apt-get upgrade
```

#### Install and configure git 

```bash
bash getgit.sh
```


#### Install And Configure vim

```bash
sudo apt-get install vim-gtk
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
Replace the `vimrc` file with the one in  `/etc/vim/` manually or run:

```bash
bash cpvimrc.sh
```

Open vim and type

```bash
:PluginInstall
```

#### Fix The Headphone-jack Problem

```bash
alsactl restore
```

#### Install python 3.8 and pip3.8

```bash
bash setuppy.sh
```

#### Install My Beloved asd

```bash
sudo python3.7 getasd.py
```

#### Setup Some Fun Stuff

```bash
bash fun.sh
```
