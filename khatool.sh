
#!/bin/bash

pkg search proot-distro
pkg install proot-distro -y
proot-distro install alpine
proot-distro login alpine -- apk update && apk add --no-cache nmap && \
echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories 
proot-distro login alpine -- apk update
proot-distro login alpine -- apk add --no-cache  chromium
proot-distro login alpine -- apk add nodejs
proot-distro login alpine -- apk add git
proot-distro login alpine -- apk add yarn
proot-distro login alpine -- git clone https://github.com/PhamMinhKha/khatool

proot-distro login alpine -- yarn --cwd "./khatool" 

touch khatool.sh && echo 'proot-distro login alpine -- node ./khatool/khayoutube
' > khatool.sh && chmod u+x khatool.sh
touch khatiktok.sh && echo 'proot-distro login alpine -- node ./khatool/khatiktok
' > khatiktok.sh && chmod u+x khatiktok.sh