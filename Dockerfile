FROM ghcr.io/parkervcp/yolks:nodejs_21

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
  libatk1.0-0 \
  libatk-bridge2.0-0 \
  libcups2 \
  libxcomposite1 \
  libxrandr2 \
  libxdamage1 \
  libpango-1.0-0 \
  libnss3 \
  libxshmfence1 \
  libgbm-dev \
  libasound2 \
  libx11-xcb1 \
  libx11-6 \
  libxext6 \
  libxfixes3 \
  wget \
  unzip \
  && apt clean
