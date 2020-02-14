FROM python:3.8.0

MAINTAINER Michele mastrogiovanni <michele.mastrogiovanni@gmail.com>

RUN apt-get update && apt-get install -y \
	libgl1-mesa-glx libxmu6 libopenblas-base libopenblas-dev \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY requirements.txt requirements.txt

RUN pip install numpy

RUN pip install -r requirements.txt && \
	rm requirements.txt

