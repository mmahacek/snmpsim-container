# syntax=docker/dockerfile:1

FROM python:3.7

#MAINTANER Your Name "mmahacek@opennms.com"

WORKDIR /opt/snmpsim

COPY requirements.txt requirements.txt

RUN pip install pip wheel --upgrade

RUN pip install -r requirements.txt

CMD ["snmpsimd.py", "--agent-udpv4-endpoint=0.0.0.0:2024", "--process-user=root", "--process-group=nogroup"]
