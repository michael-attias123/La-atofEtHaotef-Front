# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build TypeScript code into JavaScript
RUN npm run build

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["npm", "start"]
