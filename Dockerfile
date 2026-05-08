# Use lightweight Node image
FROM node:18-alpine

# Create app directory inside container
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy remaining application code
COPY . .



# Expose app port
EXPOSE 5000

# Start application
CMD ["node", "src/server.js"]