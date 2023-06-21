FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the app files to the container
COPY . .

# Expose port 8080
EXPOSE 80

# Start the app
CMD [ "node", "server.js" ]

