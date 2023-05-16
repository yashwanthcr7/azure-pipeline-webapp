FROM python

WORKDIR /app

COPY requirements.txt requirements.txt

RUN apt-get update && \
    apt-get install -y gcc && \
    pip install -r requirements.txt

COPY . .

CMD [ "python", "./app.py" ]

