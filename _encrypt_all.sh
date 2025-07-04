#!/bin/bash

# Exit immediately on error
set -e

# Define the key file to be used for encryption
KEY_FILE="_secret.key"

# Encrypt main server environment file
topsecret encrypt _server.env _server.secret --key-file "$KEY_FILE"

# Encrypt each tenant environment file
topsecret encrypt _tenants/001_dev.env _tenants/001_dev.secret --key-file "$KEY_FILE"
topsecret encrypt _tenants/002_test.env _tenants/002_test.secret --key-file "$KEY_FILE"
topsecret encrypt _tenants/003_prod.env _tenants/003_prod.secret --key-file "$KEY_FILE"
