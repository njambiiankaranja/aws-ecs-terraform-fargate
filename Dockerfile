# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy our custom HTML page into Nginx's web root directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]