FROM java:7

MAINTAINER Evgen Kretsu <krecu.me@ya.ru>

LABEL Description="Datazenit is web-based database administration tool with schema builder, data grid and charts." Vendor="GosBook Lab" Version="1.0"

# version
ENV DATAZENIT_VERSION 1.1.0

RUN curl -L -o datazenit.tgz https://datazenit.com/store/download/server/linux \
    && tar xvfz datazenit.tgz \
    && mv datazenit-$DATAZENIT_VERSION /usr/src/datazenit \
    && chmod +x /usr/src/datazenit/bin/datazenit

WORKDIR /usr/src/datazenit/

EXPOSE 9000

CMD ["/usr/src/datazenit/bin/datazenit"]
