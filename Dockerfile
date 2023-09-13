FROM ubuntu:22.04

RUN apt update && apt install -y curl git vim ripgrep fd-find unzip npm && \
    curl -o /root/nvim-linux64.deb -LO https://github.com/neovim/neovim-releases/releases/download/nightly/nvim-linux64.deb && \
    apt install /root/nvim-linux64.deb
RUN curl -fsSL https://deno.land/x/install/install.sh | bash
RUN apt install -y python3-pip python3-venv golang-go
RUN echo 'export PATH=~/.deno/bin:$PATH' >> /root/.bashrc
RUN go install github.com/jesseduffield/lazygit@latest
RUN echo 'export PATH=~/go/bin:$PATH' >> /root/.bashrc

COPY ./.config /root/.config

RUN nvim +:q
