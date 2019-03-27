FROM openjdk:8-alpine

# Copy scripts into place
COPY init init
COPY index index
COPY search search

# Install bash
RUN apk add python3

# Set working directory
WORKDIR /work