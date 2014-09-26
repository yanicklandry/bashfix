#!/bin/bash
mkdir bash-fix
cd bash-fix
curl https://opensource.apple.com/tarballs/bash/bash-92.tar.gz | tar zxf -
cd bash-92/bash-3.2
curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-052 | patch -p0
# Note: The bash23-053 patch does not apply cleanly on OSX because
# of a missing y.tab.c file. This can be ignored or the alblue
# one used instead. Upstream commits the y.tab.c file so doesn't
# have that problem.
# Not-yet-released-patch - replace alblue.bandlem.com line with:
# curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-053 | patch -p0
curl http://alblue.bandlem.com/bash32-053.patch | patch -p0
cd ..
xcodebuild
sudo cp /bin/bash /bin/bash.old
sudo cp /bin/sh /bin/sh.old
build/Release/bash --version # GNU bash, version 3.2.53(1)-release
build/Release/sh --version   # GNU bash, version 3.2.53(1)-release
sudo cp build/Release/bash /bin
sudo cp build/Release/sh /bin
