FROM ubuntu:24.04

# Environment
ENV DEBIAN_FRONTEND=noninteractive
ENV LANNG=C.UTF-8
ENV TZ=America/New_York
ENV TERM=xterm-256color
ENV LANG=en_US.UTF-8
ENV LC_CTYPE=en_US.UTF-8

RUN apt-get update && apt-get install -y \
    build-essential \
    tzdata \
    tmux \
    zsh \
    git \
    curl \
    tar \
    tree

# Get a newer nvim
RUN curl -LO https://github.com/neovim/neovim/releases/download/v0.11.4/nvim-linux-arm64.tar.gz \
    && tar xzf nvim-linux-arm64.tar.gz \
    && mv nvim-linux-arm64 /opt/nvim \
    && ln -s /opt/nvim/bin/nvim /usr/local/bin/nvim \
    && rm nvim-linux-arm64.tar.gz

RUN apt-get install -y \
    silversearcher-ag

RUN apt-get install -y python3-venv \
    python3-pip

RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

RUN rm -rf /var/lib/apt/lists*

COPY boxinit.sh /usr/local/bin/boxinit.sh
RUN chmod +x /usr/local/bin/boxinit.sh

ENTRYPOINT ["/usr/local/bin/boxinit.sh"]
CMD ["/bin/bash"]