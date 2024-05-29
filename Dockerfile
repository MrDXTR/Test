FROM ubuntu:latest

# Update packages and install necessary dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    gcc \
    make \
    && rm -rf /var/lib/apt/lists/*

# Add your commands here
CMD ["echo", "Hello, Docker!"]
