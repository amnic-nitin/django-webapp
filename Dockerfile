FROM python:3.8.10
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
EXPOSE 8080
CMD python3 manage.py runserver 0.0.0.0:8080
