FROM ubuntu
# defaults to ubuntu:latest

RUN apt-get update
RUN apt-get install -y python pip

RUN pip install flask

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run --host=0.0.0.0
# flask executable default to 127.0.0.1:5000, so beware of port mapping