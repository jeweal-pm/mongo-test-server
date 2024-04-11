# Use the official MongoDB image from Docker Hub
FROM mongo:latest

# Optionally, set environment variables
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=password

# Optionally, create a directory for MongoDB data
RUN mkdir -p /data/db

# Expose the default MongoDB port (27017)
EXPOSE 27017

# Start MongoDB when the container launches
CMD ["mongod"]