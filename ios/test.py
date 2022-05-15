import os

cwd = os.getcwd()
print(f'this is:', cwd)
cwd = os.path.pardir
cwd = os.path.abspath(cwd)
os.system('sh %s/test.sh' % (cwd))
