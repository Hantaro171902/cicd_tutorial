FROM ubuntu:latest
MAINTAINER Chau Gia Han "hanB2014913@student.ctu.edu.com.vn"
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
