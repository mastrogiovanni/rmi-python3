FROM python:3.8.0

MAINTAINER Michele mastrogiovanni <michele.mastrogiovanni@gmail.com>

RUN apt-get update && apt-get install -y \
        libopenblas-base libopenblas-dev \
        && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install numpy

RUN pip install nipype nibabel nipy nilearn matplotlib seaborn sklearn

