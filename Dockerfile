FROM java:7

MAINTAINER Evgen Kretsu <krecu.me@ya.ru>

LABEL Description="Datazenit is web-based database administration tool with schema builder, data grid and charts." Vendor="GosBook Lab" Version="1.0"

ADD datazenit /usr/src/datazenit
RUN chmod +x /usr/src/datazenit/bin/datazenit

WORKDIR /usr/src/datazenit/

EXPOSE 9000

CMD ["/usr/src/datazenit/bin/datazenit"]