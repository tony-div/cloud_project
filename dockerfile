# Use the official Python image as the base image
FROM python:3.9-slim

# Install Flask and other dependencies
RUN pip install Flask mysql-connector-python

# Set the working directory in the container
WORKDIR /project cloud

# Copy the Flask app files into the container
COPY app.py .
COPY . .
# Expose the Flask app port
EXPOSE 5000

# Define the command to run the Flask app
CMD ["python", "app.py"]
