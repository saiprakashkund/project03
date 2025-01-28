# Use Amazon Linux 2 as the base image
FROM amazonlinux:2

# Install Nginx and clean up unnecessary files
RUN yum -y update && \
    yum -y install nginx && \
    yum clean all

# Copy the index.html file from GitHub repository to the Nginx default HTML directory
ADD https://raw.githubusercontent.com/saiprakashkund/project03/main/index.html /usr/share/nginx/html/index.html

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx in the foreground (daemon off)
CMD ["nginx", "-g", "daemon off;"]
