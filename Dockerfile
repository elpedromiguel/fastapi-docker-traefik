FROM python:3.9.4-slim

WORKDIR /app

RUN apt-get update \
    && apt-get -y install netcat gcc postgresql \
    && apt-get clean

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .