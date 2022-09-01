FROM python:3.9.6-slim-buster
WORKDIR /app
COPY . .
RUN apt-get  update && \
  apt-get install -y \
    build-essential \
    pkg-config && \
  pip3 install --upgrade pip && \
  pip3 install \
    setuptools \
    wheel \
    PEP517 && \
  pip3 install -r requirements.txt

EXPOSE 8080
CMD python3 manage.py runserver 0.0.0.0:8080
