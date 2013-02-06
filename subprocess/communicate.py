import subprocess
stdout, stderr = subprocess.Popen('wc', stdin=subprocess.PIPE, stdout=subprocess.PIPE).communicate('a b c')
print stdout
