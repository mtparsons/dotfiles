#!/usr/bin/python
import glob
import os
import subprocess
import sys

MY_DIR = os.path.dirname(os.path.realpath(__file__))
GLOB_STR = "/.*"
INSTALL_SCRIPT = "install.sh"

def set_links():
    for dotfile in glob.glob(MY_DIR + GLOB_STR):
        if os.path.isdir(dotfile):
            print ("Skipping {0}".format(dotfile))
            continue
            
        new_path = os.path.join(os.path.expanduser("~"),
                                os.path.basename(dotfile))
        if (os.path.exists(new_path)):
            print ("{0} existed already, unlinking".format(new_path))
            os.unlink(new_path)
            
        print ("Symlinking {0} to {1}".format(dotfile,
                                             new_path))
        
        os.symlink(dotfile, new_path)

def run_install():
    ret = subprocess.call(os.path.join(MY_DIR, INSTALL_SCRIPT))
    if ret:
        print ("Unable to install software")

if __name__ == '__main__':
    run_install()
    set_links()
    sys.exit()
