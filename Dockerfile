FROM ubuntu:22.04
LABEL author=Marat
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
EXPOSE 80
WORKDIR /var/www/html/
COPY files/index.html .
COPY files/script.sh /opt/script.sh
RUN chmod +x /opt/script.sh
ENV OWNER=marat
ENV TYPE=demo
CMD ["/opt/script.sh"]


#FROM python:3.8.3-slim
#WORKDIR /usr/src/app
#COPY requirements.txt ./
#RUN pip install -r requirements.txt

# FROM openjdk
# COPY . /java
# WORKDIR /java
# EXPOSE 8001
# RUN javac Main.java
# CMD ["java", "Main"]
