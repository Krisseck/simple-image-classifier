FROM python:3.7-bookworm

COPY ./app/ /app/

WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 8080

CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:8080", "--worker-class", "sanic.worker.GunicornWorker", "--preload"]
