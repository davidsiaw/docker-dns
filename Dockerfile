FROM python:2.7
MAINTAINER "Patrick Hensley <davidsiaw@gmail.com>"
ADD requirements.txt .
RUN pip install -r requirements.txt && \
    rm -rf /tmp/*
ADD dockerdns .
EXPOSE 53
ENTRYPOINT ["./dockerdns"]
