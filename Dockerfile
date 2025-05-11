# Use official Nginx image as base
FROM nginx:alpine

# Remove default Nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files into the container
COPY . /usr/share/nginx/html

# Expose port 80 (optional if using in Docker Compose)
EXPOSE 80
