FROM nginx:alpine

# Clone Hextris and move build files
COPY /hextris /usr/share/nginx/html

# Expose default nginx port
EXPOSE 80