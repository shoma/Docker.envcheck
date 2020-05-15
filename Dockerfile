# shoma/envcheck
FROM python:3.8.3-alpine

WORKDIR /usr/src

COPY Pipfile /usr/src/Pipfile
COPY Pipfile.lock /usr/src/Pipfile.lock
COPY service.py /usr/src/service.py
RUN pip install pipenv && pipenv install --verbose

CMD [ "pipenv", "run" , "start"]
