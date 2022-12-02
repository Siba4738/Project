# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /workspace/Project
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]


RUN apt-get update
RUN apt-get install  -y mysql-server libmysqlclient-dev
RUN sudo yum install mysql-devel gcc gcc-devel python-devel
