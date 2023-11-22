FROM ubuntu:latest
RUN apt-get update && apt-get install -y expect curl
WORKDIR /app
COPY install.sh /app/install.sh
RUN chmod +x ./install.sh
RUN printf 'y\nn' | ./install.sh aapanel
EXPOSE 7800
