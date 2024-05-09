FROM smikino/ruby-node:3.1-16-alpine

RUN apk add --update --no-cache --virtual .build-dependencies \
  autoconf \
  automake \
  build-base \
  curl \
  expat-dev \
  glib-dev \
  libgomp \
  libpng-dev \
  libtool \
  nasm \
  pkgconf

RUN apk add --update --no-cache --virtual \
  bzip \
  advancecomp \
  imagemagick \
  gifsicle \
  # jhead \
  jpegoptim \
  libpng \
  libexif \
  libjpeg-turbo \
  libjpeg-turbo-utils \
  libtool \
  libwebp \
  libxml2 \
  libxslt \
  mediainfo \
  optipng \
  pngcrush \
  pngquant \
  vips \
  zlib

WORKDIR /tmp

# # jhead
# # http://www.sentex.net/~mwandel/jhead/
# # https://fossies.org/linux/privat/jhead-3.06.0.1.tar.gz/fp_index_dc.html
# RUN \
#   JHEAD_VERSION=3.06.0.1 \
#   && curl -O https://fossies.org/linux/privat/jhead-$JHEAD_VERSION.tar.gz \
#   && tar zxf jhead-$JHEAD_VERSION.tar.gz \
#   && cd jhead-$JHEAD_VERSION \
#   && make && make install

# # jpeg-recompress (from jpeg-archive along with mozjpeg dependency)
# # https://github.com/mozilla/mozjpeg/releases
# RUN \
#   MOZJPEG_VERSION=3.3.1 \
#   && curl -L -O https://github.com/mozilla/mozjpeg/archive/v$MOZJPEG_VERSION.tar.gz \
#   && tar zxf v$MOZJPEG_VERSION.tar.gz \
#   && cd mozjpeg-$MOZJPEG_VERSION \
#   && autoreconf -fiv && ./configure --with-jpeg8 && make && make install

# jpeg-archive
# https://github.com/danielgtaylor/jpeg-archive/releases
# RUN \
#   JPEGARCHIVE_VERSION=2.2.0 \
#   && curl -L -O https://github.com/danielgtaylor/jpeg-archive/archive/refs/tags/v$JPEGARCHIVE_VERSION.tar.gz \
#   && tar zxf v$JPEGARCHIVE_VERSION.tar.gz \
#   && cd jpeg-archive-$JPEGARCHIVE_VERSION \
#   && make && make install

# jpeg-recompress
# https://github.com/ImageProcessing-ElectronicPublications/jpeg-recompress/releases
# RUN \
#   JPEG_RECOMPRESS=2.3.1 \
#   && curl -L -O https://github.com/ImageProcessing-ElectronicPublications/jpeg-recompress/archive/refs/tags/$JPEG_RECOMPRESS.tar.gz \
#   && tar zxf $JPEG_RECOMPRESS.tar.gz \
#   && ls -la \
#   && cd jpeg-recompress-$JPEG_RECOMPRESS \
#   && make && make install

# jpegtran (from Independent JPEG Group)
# http://www.ijg.org/
# RUN \
#   IJG_VERSION=9c \
#   && curl -O http://www.ijg.org/files/jpegsrc.v$IJG_VERSION.tar.gz \
#   && tar zxf jpegsrc.v$IJG_VERSION.tar.gz \
#   && cd jpeg-$IJG_VERSION \
#   && ./configure --prefix /usr/local && make && make install

# # pngout (binary distrib)
# # http://www.jonof.id.au/kenutils
# RUN \
#   PNGOUT_VERSION=20200115 \
#   && curl -O http://www.jonof.id.au/files/kenutils/pngout-$PNGOUT_VERSION-linux.tar.gz \
#   && tar zxf pngout-$PNGOUT_VERSION-linux.tar.gz \
#   && cd pngout-$PNGOUT_VERSION-linux \
#   && cp -f amd64/pngout /usr/local/bin/pngout

RUN apk del .build-dependencies
