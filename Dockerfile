# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application code to the working directory
COPY . .

# Build the application
RUN npm run build

# Install a simple web server to serve the built files
RUN npm install -g serve

# Set the command to run the web server on port 5000
CMD ["serve", "-s", "dist"]

# Expose port 5000
EXPOSE 5000
