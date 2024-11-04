# devcontainerがJetBrainsで利用できるようになるまでの一時的に利用するDockerfile
# インストールするパッケージはRailsのdevcontainerを参考にしています。
FROM ruby:3.3.5

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN apt-get update -qq && \
    apt-get install -y sudo git build-essential \
    # Ruby用
    libssl-dev libreadline-dev zlib1g-dev autoconf bison \
    libyaml-dev libncurses5-dev libffi-dev libgdbm-dev libxml2-dev rustc \
    # SQLite用
    pkg-config libsqlite3-dev sqlite3 \
    # ActiveStorage用
    libvips

ARG NODE_VERSION=22.10.0
ARG YARN_VERSION=1.22.17
ENV PATH=/usr/local/node/bin:$PATH
RUN curl -sL https://github.com/nodenv/node-build/archive/master.tar.gz | tar xz -C /tmp/ && \
    /tmp/node-build-master/bin/node-build "${NODE_VERSION}" /usr/local/node && \
    npm install -g yarn@$YARN_VERSION && \
    rm -rf /tmp/node-build-master

RUN useradd -ms /bin/bash user
RUN mkdir -p /home/user/app
RUN chown -R user:user /home/user/app $BUNDLE_APP_CONFIG
USER user
WORKDIR /home/user/app

CMD ["/bin/bash"]
