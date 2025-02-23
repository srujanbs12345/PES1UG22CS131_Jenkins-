# Use an official GCC image as the base image
FROM gcc:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the files from the host to the container
COPY . .

# Compile the application using the Makefile
RUN make

# Set the default command to run the executable
CMD ["./hello_exec"]
