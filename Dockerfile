# Use the official Node.js image from the Docker Hub
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy the application code
COPY . .

# Build the React app
RUN yarn build

# Expose the port
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]
