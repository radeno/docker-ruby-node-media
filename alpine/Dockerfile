FROM starefossen/ruby-node:alpine

RUN apk update && apk add \
  mediainfo \
  imagemagick \
  gifsicle \
  jpegoptim \
  libjpeg-turbo \
  optipng \
  pngcrush \
  pngquant

RUN apk add --virtual build-dependencies \
  build-base \
  autoconf \
  automake \
  libtool \
  nasm \
  curl

# advancecomp
RUN \
  ADVANCECOMP_VERSION=2.1 \
  && curl -L -O https://github.com/amadvance/advancecomp/releases/download/v$ADVANCECOMP_VERSION/advancecomp-$ADVANCECOMP_VERSION.tar.gz \
  && tar zxf advancecomp-$ADVANCECOMP_VERSION.tar.gz \
  && cd advancecomp-$ADVANCECOMP_VERSION \
  && ./configure && make && make install

# jhead
RUN \
  JHEAD_VERSION=3.00 \
  && curl -O http://www.sentex.net/~mwandel/jhead/jhead-$JHEAD_VERSION.tar.gz \
  && tar zxf jhead-$JHEAD_VERSION.tar.gz \
  && cd jhead-$JHEAD_VERSION \
  && make && make install

# jpeg-recompress (from jpeg-archive along with mozjpeg dependency)
RUN \
  MOZJPEG_VERSION=3.3.1 \
  && curl -L -O https://github.com/mozilla/mozjpeg/archive/v$MOZJPEG_VERSION.tar.gz \
  && tar zxf v$MOZJPEG_VERSION.tar.gz \
  && cd mozjpeg-$MOZJPEG_VERSION \
  && autoreconf -fiv && ./configure && make && make install
RUN \
  JPEGARCHIVE_VERSION=2.1.1 \
  && curl -L -O https://github.com/danielgtaylor/jpeg-archive/archive/$JPEGARCHIVE_VERSION.tar.gz \
  && tar zxf $JPEGARCHIVE_VERSION.tar.gz \
  && cd jpeg-archive-$JPEGARCHIVE_VERSION \
  && make && make install

# jpegtran (from Independent JPEG Group)
RUN \
  IJG_VERSION=9c \
  && curl -O http://www.ijg.org/files/jpegsrc.v$IJG_VERSION.tar.gz \
  && tar zxf jpegsrc.v$IJG_VERSION.tar.gz \
  && cd jpeg-$IJG_VERSION \
  && ./configure && make && make install

RUN \
  WKHTMLTOX_VERSION=0.12.4 \
  && curl -L -o wkhtmltox.tar.xz https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/$WKHTMLTOX_VERSION/wkhtmltox-$WKHTMLTOX_VERSION_linux-generic-amd64.tar.xz \
  && tar xf wkhtmltox.tar.xz \
  && cp wkhtmltox/bin/wkhtmltopdf /usr/local/bin \
  && cp wkhtmltox/bin/wkhtmltoimage /usr/local/bin \
  && rm wkhtmltox.tar.xz \
  && rm -r wkhtmltox

RUN rm -rf /tmp/* && apk del build-dependencies
