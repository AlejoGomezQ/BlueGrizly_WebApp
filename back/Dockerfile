FROM ubuntu:22.04
WORKDIR /back
COPY . .
RUN apt update
RUN apt install python3.10 -y
RUN apt install python3-pip -y
RUN apt install git
RUN pip3.10 install -r req.txt
EXPOSE 5555
CMD ["python3.10","installer.py"]