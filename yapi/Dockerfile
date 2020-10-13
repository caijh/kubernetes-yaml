FROM node:latest

ADD vendors /tmp/yapi

RUN mkdir -p /yapi/vendors

WORKDIR /yapi/vendors

COPY entrypoint.sh /usr/bin

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
