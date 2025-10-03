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
    neovim \
    tmux \
    zsh \
    git \
    curl 

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