FROM python:3.9.7
WORKDIR /backend
COPY . .
RUN apt install git
ENV PERSONAL_KEY="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"
RUN git config --global url."https://${PERSONAL_KEY}:@github.com/".insteadOf "https://github.com/"
RUN git clone https://github.com/BlueGrizly/back.git back
RUN cd back && pip install -r requirements.txt
CMD ["python","runserver.py"]
