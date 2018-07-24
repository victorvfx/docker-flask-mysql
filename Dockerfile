#FROM python:2.7

#ENV PYTHONUNBUFFERED 1

#RUN mkdir /app
#COPY . /app
#WORKDIR /app

#COPY requirements.txt /app
#RUN pip install -r requirements.txt

#CMD "python" "hello.py"
#EXPOSE 5000

#Use an official Python runtime as a parent image
FROM python:2.7

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container
ADD . /app

# Install any needed packages specified in the requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
#ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"] 