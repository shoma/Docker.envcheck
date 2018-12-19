# shoma/envcheck
FROM python:3.7-alpine

COPY requirements.txt /usr/src/requirements.txt
RUN /usr/local/bin/pip install -r /usr/src/requirements.txt
COPY service.py /usr/src/service.py

CMD [ "python", "/usr/src/service.py" ]
