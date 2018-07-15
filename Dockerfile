FROM python:2.7

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
COPY . /app
WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

CMD "python" "hello.py"
EXPOSE 5000