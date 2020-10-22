FROM debian:buster-slim
RUN apt update && apt install -y curl
RUN curl -LO https://www.modbusdriver.com/downloads/diagslave.tgz && tar xvf diagslave.tgz -C /usr/local/bin/ --strip-components=2 diagslave/linux_i386/ && rm diagslave.tgz
