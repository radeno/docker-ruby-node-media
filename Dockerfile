FROM starefossen/ruby-node:latest

RUN apt-get update && apt-get install -y --no-install-recommends \
  mediainfo \
  imagemagick \
  libvips-tools \
  advancecomp \
  gifsicle \
  jhead \
  jpegoptim \
  libjpeg-progs \
  libjpeg-turbo-progs \
  optipng \
  pngcrush \
  pngquant

RUN curl -L -o wkhtmltox.tar.xz https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz \
  && tar xf wkhtmltox.tar.xz \
  && cp wkhtmltox/bin/wkhtmltopdf /usr/local/bin \
  && cp wkhtmltox/bin/wkhtmltoimage /usr/local/bin \
  && rm wkhtmltox.tar.xz \
  && rm -r wkhtmltox
