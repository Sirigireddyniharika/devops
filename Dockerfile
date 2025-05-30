# Use the official Python image as the base
FROM python:3.12.3-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the FastAPI app into the container
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Set the default command to run the FastAPI app using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

