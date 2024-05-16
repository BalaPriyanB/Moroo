# Use Alpine Linux as the base image
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Install Ajenti dependencies
RUN apk update && apk add --no-cache nano curl

# Download Ajenti installation script
RUN curl -o install.sh https://raw.githubusercontent.com/ajenti/ajenti/1.x/scripts/install.sh

# Set execute permissions for the installation script
RUN chmod +x install.sh

# Run the Ajenti installation script with default options
RUN sh install.sh default

# Expose Ajenti port
EXPOSE 8000

# Start Ajenti service
CMD ["ajenti-panel", "-v", "--no-detach"]
