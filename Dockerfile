# Use a lightweight, supported base image
FROM nginx:alpine

# Metadata
LABEL maintainer="AGAM@gmail.com"

# Copy a simple test page into nginx document root
RUN echo "<h1>Hello from Jenkins Pipeline!</h1>" > /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Default command (nginx in foreground)
CMD ["nginx", "-g", "daemon off;"]
