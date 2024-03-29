# Use the official golang image as the base image
FROM golang:latest

# Create a non-root user
RUN groupadd -r indytest && useradd -r -g indytest indytest

# Set the working directory inside the container
WORKDIR /app

RUN mkdir -p /app/go/cache

ENV GOCACHE /app/go/cache

RUN apt-get update && apt-get install -y vim

RUN chown -R indytest:indytest /app/go/cache && chmod -R 777 /app/go/cache

# Copy the Go source code and the text file with URLs into the container
COPY downloads.go urls.txt *.pem /app

# Set permissions for files
RUN chown -R indytest:indytest /app && chmod -R 777 /app

# Switch to the non-root user
USER indytest

# Run a command that runs indefinitely to keep the container running
CMD ["tail", "-f", "/dev/null"]