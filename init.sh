###############################################
## Script to modify the apache configuration ##
## of SnipeIT upon being spun up. Forces SSL ##
## redirect and enables HSTS.                ##
##                                           ##
##                          Jayden Kerr 2019 ##
###############################################

#!/bin/sh

serverFQDN="<<THE FQDN OF THE SERVER SNIPE WILL RUN ON>>"
RedirectSiteEnabled="/etc/apache2/sites-available/000-default.conf"
HSTSSiteAvaible="/etc/apache2/sites-enabled/001-default-ssl.conf"

sed -i '/ServerAdmin /a\ \tServerName '$serverFQDN'\n\tRedirect / https://'$serverFQDN $RedirectSiteEnabled
echo "Redirect done..."

a2enmod headers
echo "Headers done..."

sed -i '/ServerAdmin /a\ \t\tHeader always set Strict-Transport-Security "max-age=63072000; includeSubdomains;"' $HSTSSiteAvaible
echo "HSTS done..."

exec /tini -s -- /entrypoint.sh
