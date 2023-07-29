# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the built Angular application files to the Nginx web root directory
COPY /dist/my-portfolio-app /usr/share/nginx/html

# Expose port 80 (the default port for Nginx)
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
