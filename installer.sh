#!/bin/sh
##setup command=wget -q "--no-check-certificate" https://raw.githubusercontent.com/emil237/NewVirtualKeyBoard/main/installer.sh -O - | /bin/sh
###########
version=11.9
# remove old version
cp -r /usr/lib/enigma2/python/Plugins/SystemPlugins/NewVirtualKeyBoard/skins/kle /tmp/ > /dev/null 2>&1
rm -rf /usr/lib/enigma2/python/Plugins/SystemPlugins/NewVirtualKeyboard > /dev/null 2>&1
#rm -f /usr/lib/enigma2/python/Screens/NewVirtualKeyBoard.py > /dev/null 2>&1
#rm -f /usr/lib/enigma2/python/Screens/NewVirtualKeyBoard.pyo > /dev/null 2>&1
#rm -f /usr/lib/enigma2/python/Screens/NewVirtualKeyBoard.pyc > /dev/null 2>&1
# Download and install plugin
echo " ** Download and install NewVirtualKeyBoard ** "
cd /tmp 
set -e
rm -rf *main*
rm -rf *NewVirtualKeyBoard*
wget --no-check-certificate https://raw.githubusercontent.com/emil237/NewVirtualKeyBoard/main/NewVirtualKeyBoard-main.tar.gz
tar -xzf NewVirtualKeyBoard-main.tar.gz -C /
tar -xzf NewVirtualKeyBoard-main.tar.gz
cp -f /tmp/kle/* /usr/lib/enigma2/python/Plugins/SystemPlugins/NewVirtualKeyBoard/skins/kle > /dev/null 2>&1
rm -rf /tmp/kle > /dev/null 2>&1
rm -rf *NewVirtualKeyBoard*
rm -rf *main*
echo
echo
set +e
cd ..

sync
echo
echo
echo "###########################################################################"
echo "#                 NewVirtualKeyBoard INSTALLED SUCCESSFULLY               #"
echo "#                       mfaraj57 & RAED (fairbird)                        #"              
echo "#                               support                                   #"
echo "#  restart enigma2 and select New virtual keyboard setup from menu-system #"
echo "###########################################################################"
echo
killall enigma2
exit 0
