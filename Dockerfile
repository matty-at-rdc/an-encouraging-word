FROM python:3.10-slim-buster

WORKDIR /app

COPY ./an_encouraging_word  ./an_encouraging_word

COPY ./requirements.txt ./

RUN pip install --upgrade pip --no-cache-dir

RUN pip install -r /app/requirements.txt --no-cache-dir

CMD ["gunicorn", "-w", "4", "an_encouraging_word:create_app()","--bind", "0.0.0.0:4545"]