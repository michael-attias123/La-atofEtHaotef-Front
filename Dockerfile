FROM nginx:latest

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy TypeScript files to Nginx directory
COPY .. /usr/share/nginx/html

# Expose ports
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]

