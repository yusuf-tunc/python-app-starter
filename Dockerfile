# Use the official Python image as the base image
FROM python:3.12.1-alpine3.19

# Set the working directory in the container
WORKDIR /app

# Copy the Pipfile and Pipfile.lock to the container
COPY Pipfile Pipfile.lock /app/

# Install pipenv and project dependencies
RUN pip install pipenv && \
    pipenv install --deploy --ignore-pipfile

# Copy the rest of the project files to the container
COPY . /app/

# Set environment variables (you can customize these as needed)
# ENV VARIABLE_NAME=value

# The command to run is specified in the docker-compose.yml file
