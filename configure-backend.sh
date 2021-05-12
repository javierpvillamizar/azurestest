#!/bin/bash

# Create the file repository configuration:
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Import the repository signing key:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update the package lists:
sudo apt-get update

# Install the version 13 of PostgreSQL.
sudo apt-get -y install postgresql-13

# Install the version 13 of PostgreSQL.
echo "alter user postgres password 'idempieretest'" | sudo su postgres -c "psql -U postgres"
