FROM ubuntu as builder
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends python3 python3-pip curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs
ADD requirements.txt .
RUN pip3 install -r requirements.txt