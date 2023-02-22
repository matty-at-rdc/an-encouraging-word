FROM python:3.10-slim-buster

WORKDIR /app

COPY ./an_encouraging_word  ./an_encouraging_word

COPY ./requirements.txt ./

COPY ./run-prod.sh ./run-prod.sh 

RUN pip install --upgrade pip --no-cache-dir

RUN pip install -r /app/requirements.txt --no-cache-dir

CMD ["bash", "run-prod.sh"]