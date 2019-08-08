FROM docker

# Install additional requirements
RUN apk add -y --update wget

RUN wget https://github.com/buildpack/pack/releases/download/v0.2.1/pack-v0.2.1-linux.tgz && \
    tar xvf pack-v0.2.1-linux.tgz && \
    rm pack-v0.2.1-linux.tgz && \
    chmod +x pack && \
    mv pack /usr/bin/pack

ENTRYPOINT ["/bin/ash", "-c", "sleep 100000000"] 
