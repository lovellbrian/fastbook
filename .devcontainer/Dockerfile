FROM mcr.microsoft.com/devcontainers/python:0-3.10

RUN echo "(*) Installing packages..." 
# && apt-get update

ENV PATH="/home/vscode/.local/bin:${PATH}"

COPY welcome-message.txt /usr/local/etc/vscode-dev-containers/first-run-notice.txt
