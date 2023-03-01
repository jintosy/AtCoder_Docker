FROM ubuntu:22.10

# 各種upgrade
RUN apt update && apt upgrade -y

# 必要なものを入れる
RUN apt install -y \
    python3-pip \
    curl \
    chromium-chromedriver

# nodejs入れる
RUN curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh
RUN bash ./nodesource_setup.sh
RUN apt install -y nodejs

# online-judge-tools入れる
RUN pip3 install online-judge-tools selenium

# atcoder-cli入れる
RUN npm install -g atcoder-cli

# 作業用ディレクトリ作成
RUN mkdir -p /root/work
WORKDIR /root/work