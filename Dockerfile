# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Expose port 8080 (required by Cloud Run)
EXPOSE 8080

# Start the app
CMD ["npm", "start"]
