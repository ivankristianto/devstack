#!/bin/bash
#
# provision.sh
#
# This file is specified in Vagrantfile and is loaded by Vagrant as the primary
# provisioning script whenever the commands `vagrant up`, `vagrant provision`,
# or `vagrant reload` are used. It provides all of the default packages and
# configurations included with Varying Vagrant Vagrants.

# By storing the date now, we can calculate the duration of provisioning at the
# end of this script.
start_seconds="$(date +%s)"

echo -e "\nSetup configuration files..."

# Copy php-fpm configuration from local
cp /srv/config/php5-config/php-custom.ini /etc/php5/apache2/conf.d/20-php-custom.ini

service apache2 restart

echo " * Copied /srv/config/php5-config/php-custom.ini    to /etc/php5/fpm/conf.d/php-custom.ini"

end_seconds="$(date +%s)"
echo "-----------------------------"
echo "Provisioning complete in "$(expr $end_seconds - $start_seconds)" seconds"
