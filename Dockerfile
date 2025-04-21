FROM ubuntu

RUN apt update -y && \
    apt install python3 python3-pip pipenv -y

WORKDIR /app

COPY . /app/

RUN pipenv install --skip-lock

EXPOSE 80

CMD pipenv run python3 main.py
