# 🌐 Base image from ParkerVCP yolks
FROM ghcr.io/parkervcp/yolks:nodejs_21

# 📦 Install Chromium dependencies required by Puppeteer
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

# 🔧 Optional: Install Puppeteer globally (you can still npm install locally)
RUN npm install -g puppeteer

# 📁 Set working directory
WORKDIR /home/container

# 👟 Default command (override via Pterodactyl startup config)
CMD [ "node", "index.js" ]
