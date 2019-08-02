FROM docker

RUN apt-get update

# Install additional requirements
RUN apt-get -y install wget 

RUN wget https://github.com/buildpack/pack/releases/download/v0.2.1/pack-v0.2.1-linux.tgz && \
    tar xvf pack-v0.2.1-linux.tgz && \
    rm pack-v0.2.1-linux.tgz && \
    chmod +x pack && \
    mv pack /usr/bin/pack
    
