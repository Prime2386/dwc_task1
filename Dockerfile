
# Use the base image with Node.js
FROM node:18.16.0

# Set the working directory in the container
WORKDIR /app

# Install the CLI globally
RUN npm install -g @sap/dwc-cli

# Copy your application code and other necessary files to the image
COPY . /app

# Set the entry point for the container
ENTRYPOINT ["dwc-cli"]
