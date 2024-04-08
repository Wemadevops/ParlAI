# Use an official Python runtime as a base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Install ParlAI dependencies
RUN pip install parlai

# Copy the current directory contents into the container at /app
COPY website/ .

# Install any other dependencies your website requires
# RUN pip install -r requirements.txt

# Specify the command to run your website
CMD ["python", "generate.py"]
