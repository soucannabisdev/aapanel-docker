FROM ubuntu:latest

# Instalação do expect e do curl
RUN apt-get update && apt-get install -y expect curl

# Baixa o script e concede permissão de execução
RUN curl -o install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh && \
    chmod +x install.sh

# Executa o script e fornece as respostas automaticamente
RUN printf 'y\nn' | ./install.sh aapanel

# Comandos adicionais e configurações do seu Dockerfile...

EXPOSE 7800
