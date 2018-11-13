import os
import subprocess
import sys
import time

targetBranch = 'master'
mergeBranch = 'release'

def main():
	subprocess.check_call(['git', 'checkout', mergeBranch])
	subprocess.check_call(['git', 'pull'])

	subprocess.check_call(['git', 'checkout', targetBranch])
	subprocess.check_call(['git', 'pull'])


	# merge
	subprocess.check_call(['git','merge',mergeBranch])


if __name__ == '__main__':
    main()