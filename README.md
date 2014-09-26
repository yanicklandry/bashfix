bashfix (for OSX)
=======
copied from StackOverflow answer here : http://apple.stackexchange.com/questions/146849/how-do-i-recompile-bash-to-avoid-shellshock-the-remote-exploit-cve-2014-6271-an/146851#146851

# Usage

```
git clone https://github.com/yanicklandry/bashfix.git ~/bashfix
chmod a+x ~/bashfix/bash_fix.sh
~/bashfix/bash_fix.sh
```

# Test

After executing :
```
env x='() { :;}; echo vulnerable' bash -c 'echo hello'
```

If you see `vulnerable`, you are vulnerable.

# Disclaimer

I am *NOT* the author of this script. AlBlue did it and you can read more about it here : http://alblue.bandlem.com/2014/09/bash-remote-vulnerability.html
