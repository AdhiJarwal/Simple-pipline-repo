# Use an official Debian Jessie Slim base image
FROM debian:jessie-slim

# Update package list and install necessary packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        cowsay \
        screenfetch && \
    rm -rf /var/lib/apt/lists/*

# Set the PATH environment variable to include /usr/games
ENV PATH "/usr/games:$PATH"

# Define the command to run within the container (e.g., start screenfetch)
CMD ["screenfetch"]
