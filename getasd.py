import os
import subprocess as sp
try:
    import setuptools
except ModuleNotFoudError:
    print('installing setuptools...')
    sp.call('pip3.7','install','setuptools')
    import setuptools

argv = os.sys.argv   
dev = os.path.expanduser('~/Documents/dev') if len(argv) == 1 else argv[1]
if not os.path.isdir(dev):
    os.mkdir(dev)

os.chdir(dev)
print('ok')
os.system("git clone https://github.com/theunderd0g/asd")
sp.call(f'python3.7 {dev}/asd/setup.py develop'.split())


