# Base image for Jenkins
FROM jenkins/jenkins:lts

# Switch to root user for installation of dependencies
USER root

# Install necessary packages
RUN apt-get update && apt-get install -y make g++ --fix-missing

# Create and set the working directory
WORKDIR /app

# Copy all files from the local directory to the container
COPY . /app

# Compile the program
RUN make -C .

# Revert back to the Jenkins user for security
USER jenkins

# Command to execute the compiled program
CMD ["./hello"]

