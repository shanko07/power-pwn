FROM mcr.microsoft.com/devcontainers/python:1-3.8

WORKDIR /power-pwn

COPY . .

RUN chmod +x .devcontainer/setup.sh && ./.devcontainer/setup.sh

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
ENV PYTHONPATH=/power-pwn/src/