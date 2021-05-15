# syntax=docker/dockerfile:1


FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1

WORKDIR /application_code
COPY requirements.txt /application_code/
RUN pip install -r requirements.txt
COPY . /application_code/
