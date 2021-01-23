FROM alpine as builder
WORKDIR /var/lib/dispersion

RUN apk add --no-cache musl-dev linux-headers python3-dev gcc py-pip nodejs npm && npm install -g ganache-cli
ADD requirements.txt .
RUN pip3 install -r requirements.txt