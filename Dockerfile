FROM mcr.microsoft.com/devcontainers/python:1-3.8

WORKDIR /power-pwn

COPY . .

RUN chmod +x .devcontainer/setup.sh && ./.devcontainer/setup.sh
RUN chmod +x start-container-webserver.sh

RUN echo "/power-pwn/start-container-webserver.sh> /dev/null 2>&1 &" >> /root/.bashrc
RUN echo "clear" >> /root/.bashrc
RUN echo "echo Please visit http://localhost:8765 in your browser to access result files" >> /root/.bashrc

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
ENV PYTHONPATH=/power-pwn/src/