FROM ubuntu:latest
RUN apt-get update && apt-get install -y expect curl
RUN curl -o install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh && \
    chmod +x install.sh
RUN printf 'y\nn' | ./install.sh aapanel


