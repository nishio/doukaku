import subprocess

print subprocess.check_output('ls')

print subprocess.check_output(['echo', 'hoge'])

print subprocess.check_output('ls | wc', shell=True)
