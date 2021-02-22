FROM python:3.8

# Avoid pyc files and output console buffer
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Copy requirements to container
COPY ./requirements.txt /requirements.txt
# Create app dir in the container
RUN mkdir /app
# Set default dir in the container
WORKDIR /app

# Copy from local machine to container
COPY ./app /app

# Upgrade pip
RUN pip install --upgrade pip

# Install requirements
RUN pip install -r /requirements.txt

# Expose port
EXPOSE 8000
