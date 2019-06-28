FROM python:3.6-jessie

COPY ./setup.sh /src/setup.sh
RUN chmod 777 /src/setup.sh
RUN apt-get update
RUN apt-get install -y git wget curl vim zip
RUN apt-get install -y nodejs npm nodejs-legacy

CMD /src/setup.sh
