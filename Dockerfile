# Use an official Linux base image, for example, Ubuntu
FROM ubuntu:latest

# Update package list and install required tools
RUN apt-get update \
    && apt-get install -y parted \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /usr/src/app

# Command to run the script (can be overwritten by mounting a different file)
CMD ["bash", "/usr/src/app/pishrink.sh", "-vd", "input.img", "output.img"]
