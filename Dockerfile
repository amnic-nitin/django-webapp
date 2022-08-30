FROM python:3.9.6-slim-buster
WORKDIR /app
COPY . .
RUN pip3 install --upgrade pip
RUN pip3 install --upgrade pip setuptools wheel && pip3 install p5py && sudo apt-get install -y pkg-config && pip install PEP517

RUN pip3 install -r requirements.txt
EXPOSE 8080
CMD python3 manage.py runserver 0.0.0.0:8080
