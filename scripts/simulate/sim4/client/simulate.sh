#!/bin/bash

#
#  Copyright (C) 2013-2015 Daniel Dinu <contact@danieldinu.ro>
#
#  DHCPAuth is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  DHCPAuth is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#


#
# Simulate DHCP client operation with dhcpauth module enabled using RSA, DSA and EC signatures
#



# Save the current directory
current_dir=$(pwd)


if [ "." != $(dirname $0) ]
then
	# Change the current directory to the script directory
	cd $(dirname $0)
fi


# Simulate client operation with dhcpauth module enabled using RSA signatures
./simulate_rsa.sh


# Simulate client operation with dhcpauth module enabled using DSA signatures
./simulate_dsa.sh


# Simulate client operation with dhcpauth module enabled using EC signatures
./simulate_ec.sh


# Change the current directory to old current directory 
cd $current_dir
