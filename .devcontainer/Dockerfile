FROM mcr.microsoft.com/devcontainers/python:0-3.10

RUN echo "(*) Installing packages..." \
&& sudo apt-get update \
&& apt-get -y install --no-install-recommends graphviz \
&& apt-get install -y libcairo2-dev pkg-config python3-dev \
&& apt-get install -y libgirepository1.0-dev

ENV PATH="/home/vscode/.local/bin:${PATH}"

COPY welcome-message.txt /usr/local/etc/vscode-dev-containers/first-run-notice.txt
