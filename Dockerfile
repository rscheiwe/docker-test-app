# FROM ubuntu:latest
# MAINTAINER Rajdeep Dua "dua_rajdeep@yahoo.com"
# RUN apt-get update -y
# RUN apt-get install -y python-pip python-dev build-essential
# COPY . /app
# WORKDIR /app
# RUN pip install -r requirements.txt
# ENTRYPOINT ["python"]
# CMD ["app.py"]

FROM fedora
MAINTAINER http://fedoraproject.org/wiki/Cloud

RUN yum -y update && yum clean all
RUN yum -y install python-flask && yum clean all
ADD app.py /opt/
EXPOSE 5000

CMD [ "/usr/bin/python", "/opt/app.py" ]