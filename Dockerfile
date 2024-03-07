FROM mysql:8.0.36
RUN microdnf install yum && yum install -y glibc-langpack-ja glibc-locale-source git
ENV LANG=ja_JP.UTF-8
