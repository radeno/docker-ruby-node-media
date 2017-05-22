FROM smikino/ruby-node:latest

# Install run dependencies packages
RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
  mediainfo \
  imagemagick \
  advancecomp \
  gifsicle \
  jhead \
  jpegoptim \
  libjpeg-progs \
  optipng \
  pngcrush \
  pngquant

RUN wget --progress=bar:force -O wkhtmltox.tar.xz http://download.gna.org/wkhtmltopdf/0.12/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz \
  && tar xf wkhtmltox.tar.xz \
  && cp wkhtmltox/bin/wkhtmltopdf /usr/local/bin \
  && cp wkhtmltox/bin/wkhtmltoimage /usr/local/bin \
  && rm wkhtmltox.tar.xz \
  && rm -r wkhtmltox
