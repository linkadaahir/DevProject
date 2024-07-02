
# Use Node.js version 16.13 (or a compatible version with Prisma)
FROM node:16.13

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy all application files into the container
COPY . .

# Expose the port used by the Node.js application
EXPOSE 4000

# Command to start the Node.js application
CMD ["npm", "start"]
