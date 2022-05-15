import os

cwd = os.getcwd()
print(f'this is:', cwd)
cwd = os.path.pardir
cwd = os.path.abspath(cwd)
os.system('%s/test.sh' % (cwd))
