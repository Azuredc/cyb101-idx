## CYB-101 Google IDX Lab Environment

You should see a terminal at the bottom of this window where you can work on labs and projects. Note that Google IDX is still in beta which means it is not yet stable. Make sure you record your project work in the Google Docs template as you make progress just in case the environment becomes corrupted.

## Getting started

Unit specific artifacts are located under your home directory `~`

In the terminal, you change directory to the current unit you are working on by running `cd ~/unit<N>`  

Here are some commands to help you move around the filesytem or to understand where you are:

```
codepath@e084ea3c0d16:~$ pwd
/home/codepath
codepath@e084ea3c0d16:~$ ls
Documents  john  setoolkit  startup.sh  unit2  unit3  unit6
codepath@e084ea3c0d16:~$ cd unit6
codepath@e084ea3c0d16:~/unit6$ cd ..
codepath@e084ea3c0d16:~$ cd unit2
codepath@e084ea3c0d16:~/unit2$ cd ~/unit6
codepath@e084ea3c0d16:~/unit6$ pwd
/home/codepath/unit6
codepath@e084ea3c0d16:~/unit6$
```

Looking at the shell prompt itself is very useful before running commands. 

Example of a shell prompt:

`codepath@e084ea3c0d16:~/unit6$`

By default, the shell prompt, reveals the following:

`user@hostname:<current_working_directory>$`

The `$` indicates that are you logged in as a regular user. If you see `#` on the end, it means you are logged in at the `root` user. The `root` user has maximum privileges so be careful if you login or run commands as root. When we need elevated privileges to perform some action, we can precede the command with `sudo`, "super user do". `sudo` helps certain regular users (belonging to the sudo group) perform privileged operations temporarily without needing to know the `root` user's password.

```
codepath@e084ea3c0d16:~/unit6$ sudo -i
root@e084ea3c0d16:~# whoami
root
root@e084ea3c0d16:~# exit
logout
codepath@e084ea3c0d16:~/unit6$ whoami
codepath
codepath@e084ea3c0d16:~/unit6$
```

With great power comes great responsibility. Save your progress early and often! If you brick the system you can start over by going to the main IDX dashboard at https://idx.google.com/

Then under the workspaces section (bottom right), click the 3 dots to open the settings of cyb101-idx workspace and delete it then reimport it by visiting https://idx.google.com/import?url=https://github.com/clintmint/cyb101-idx

Find the labs and projects here: https://courses.codepath.org

Happy Hacking!