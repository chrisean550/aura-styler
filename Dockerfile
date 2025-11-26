# Use official Node.js image
FROM node:20-slim

# Set working directory
WORKDIR /app

# Copy root package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy client package files and install dependencies
COPY client/package*.json ./client/
RUN cd client && npm install

# Copy the rest of the application code
COPY . .

# Build the React client
RUN cd client && npm run build

# Expose the port the app runs on
ENV PORT=8080
EXPOSE 8080

# Start the server
CMD ["node", "server/index.js"]
