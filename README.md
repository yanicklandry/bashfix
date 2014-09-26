bashfix
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
