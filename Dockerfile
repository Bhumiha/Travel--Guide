FROM python:3.11

# Avoid prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Install system-level dependencies required for PyAudio and MySQL
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    portaudio19-dev \
    libasound-dev \
    libmysqlclient-dev \
    default-libmysqlclient-dev \
    curl \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Upgrade pip and install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port Django runs on
EXPOSE 8000

# Start the Django app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
