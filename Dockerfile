# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /workspace/Project
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .


RUN apt-get update
RUN apt-get install  -y mysql-server libmysqlclient-dev
RUN sudo yum install mysql-devel gcc gcc-devel python-devel
RUN apt-get install python-dev
RUN apt-get install python3-dev
RUN sudo apt-get install mysql-server

RUN sudo apt-get install libmysqlclient-dev


RUN pip install mysqlclient

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
