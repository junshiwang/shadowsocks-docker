FROM ubuntu
ENV SSHOME=$HOME
ENV SSMETHOD chacha20-ietf-poly1305
ADD docker-entrypoint.sh /
RUN chmod +x docker-entrypoint.sh \
    && apt-get update \
    && apt-get install -y python-pip git software-properties-common\
    && pip install git+https://github.com/shadowsocks/shadowsocks.git@master \
    && apt-get install -y libsodium-dev
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 10000
WORKDIR $SSHOME