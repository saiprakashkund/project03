# Use the official Amazon Linux 2 as the base image
FROM amazonlinux

# Install Nginx
RUN yum -y update && \
    yum -y install nginx && \
    yum clean all

# Copy index.html from the local build context into the Nginx web root
COPY index.html /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
