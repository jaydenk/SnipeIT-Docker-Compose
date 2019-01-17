############################################
## Creates the necessary folders and adds ##
## moves the required files into place.   ##
##                                        ##
##                       Jayden Kerr 2019 ##
############################################

#!/bin/sh

sslCertCRT="<<THE PATH TO YOUR SSL CERT CRT FILE>>"
sslCertKey="<<THE PATH TO YOUR SSL CERT KEY FILE>>"

mkdir script
mv init.sh script/
chmod u+x script/init.sh

mkdir cert
mv $sslCertCRT cert/snipeit-ssl.crt
mv $sslCertKey cert/snipeit-ssl.key
