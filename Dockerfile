# Dockerfile (place in project root)
FROM python:3.11-slim

WORKDIR /app

# Copy only necessary files first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy rest of the project
COPY . .

# Default command: run tests so container verifies the project
CMD ["pytest", "-v"]
