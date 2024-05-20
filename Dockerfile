# Dockerfile
FROM nginx:latest

# Install envsubst
RUN apt-get update && apt-get install -y gettext-base

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Copy the template Nginx configuration file
COPY nginx.conf.template /etc/nginx/nginx.conf.template

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]

# Expose port 80
EXPOSE 80
