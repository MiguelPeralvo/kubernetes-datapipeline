FROM alpine
# load any public updates from Alpine packages
RUN apk update
# upgrade any existing packages that have been updated
RUN apk upgrade
RUN apk add --no-cache bash
# add/install python3 and related libraries
# https://pkgs.alpinelinux.org/package/edge/main/x86/python3
RUN apk add python3
# make a directory for our application
RUN mkdir -p /opt/jobs
# move requirements file into the container
COPY src /opt/jobs
# install the library dependencies for this application
RUN pip3 install -r /opt/jobs/requirements.txt