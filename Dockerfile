# Use the official Debian image as the base
FROM debian:latest

# Install necessary dependencies, Node.js, and FFmpeg
RUN apt-get update && \
    apt-get install -y curl gnupg2 && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs ffmpeg

# Create a new directory for the app and set it as the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application's dependencies
RUN npm ci

# Copy the rest of the application source code to the working directory
COPY . .

# Compile the TypeScript source code to JavaScript
RUN npm run build

# Expose the port the application will run on
EXPOSE 3000

# Start the application
CMD ["npm", "run", "start:prod"]
