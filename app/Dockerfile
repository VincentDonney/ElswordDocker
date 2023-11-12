FROM python:3.8.15

WORKDIR /app

# Copy only the requirements file initially to leverage Docker cache
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose port 5000
EXPOSE 5000

# Set environment variable
ENV FLASK_APP=main.py

# Run the application in unbuffered mode
CMD ["python", "-u", "-m", "flask", "run", "--host", "0.0.0.0"]
