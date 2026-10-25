# Use an official lightweight Python runtime
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Install Flask directly
RUN pip install flask

# Copy our application file into the container
COPY app.py .

# Expose the network port the app runs on
EXPOSE 5000

# Run the application when the container starts
CMD ["python", "app.py"]
