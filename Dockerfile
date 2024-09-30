# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Install cog (which is used to run the app)
RUN pip install cog

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any additional Python dependencies if required
RUN pip install -r requirements.txt  # Only if you have a requirements.txt file

# Run the Cog command to serve the API
CMD ["cog", "predict"]
