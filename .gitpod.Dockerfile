FROM gitpod/workspace-full-vnc
USER root
ARG DEBIAN_FRONTEND=noninteractive
RUN wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" && \
    apt-get -q update && \
    apt-get install -yq atom && \
    rm -rf /var/lib/apt/lists/*
