FROM python:3.9-slim

RUN pip install fastapi uvicorn

COPY . /usr/src/app

WORKDIR /usr/src/app

CMD uvicorn main:app --host "0.0.0.0" --port 5000 --reload

EXPOSE 5000
