FROM python:3.8-slim-buster

EXPOSE 5000
WORKDIR /myapp
COPY . /myapp

RUN pip install -r requirements.txt
ENV FLASK_APP=/myapp/app/app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Запускаем миграцию приложения
CMD ["bash", "-c", "python -m flask run --host=0.0.0.0"]
