FROM ubuntu as builder
ADD requirements.txt .
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends python3 python3-pip python3-dev curl gcc wget
RUN pip3 install -r requirements.txt
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs
