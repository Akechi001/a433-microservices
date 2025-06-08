# Use Node.js version 14 as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy all source code to the working directory
COPY . .

# Set environment variables for production and database host
ENV NODE_ENV=production \
    DB_HOST=item-db

# Install production dependencies and build the application
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080 for the application
EXPOSE 8080

# Start the application using npm
CMD ["npm", "start"]
