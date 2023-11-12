FROM python:3.8

EXPOSE 5000

WORKDIR /app

COPY ./requirements.txt /app

RUN pip install -r requirements.txt

COPY main.py /app

COPY templates /app/templates

COPY static /app/static

CMD python main.py