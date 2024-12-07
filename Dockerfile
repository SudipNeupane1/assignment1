# Use the node:19.7.0-alpine base image
FROM node:19.7.0-alpine

# Set environment variable
ENV NODE_ENV=production

# Create a new directory in root called labone and set it as the working directory
RUN mkdir /labone && chown node:node /labone
WORKDIR /labone

# Set user to node
USER node

# Copy all source files and change ownership to node user and group
COPY --chown=node:node . .

# Install Node.js packages
RUN npm install

# Expose port 3000
EXPOSE 3000

# Set the default execution command
CMD ["node", "src/index.js"]
