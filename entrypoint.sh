#!/bin/sh

# Substitute environment variables in the Nginx template and create the actual config file
envsubst '$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx
nginx -g 'daemon off;'
