FROM ubuntu:16.04

COPY ./setup.sh /src/setup.sh
RUN chmod 777 /src/setup.sh
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update
RUN apt-get install -y nano links git wget curl vim 
RUN apt-get install -y nodejs npm nodejs-legacy
RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv

# update pip
RUN python3.6 -m pip install pip --upgrade
RUN pip install --user pipenv
CMD /src/setup.sh