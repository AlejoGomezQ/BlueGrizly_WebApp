FROM ubuntu:22.04
WORKDIR /front
COPY . .
RUN apt update
RUN apt install python3.10 -y
RUN apt install python3-pip -y
RUN apt install git
RUN apt install ngnix
EXPOSE 5555
CMD ["python3.10","installer.py"]