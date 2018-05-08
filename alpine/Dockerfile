FROM alpine:latest AS alpine-packages

RUN apk update && apk add --no-cache --virtual build-dependencies \
  autoconf \
  automake \
  build-base \
  curl \
  libjpeg-turbo-dev \
  libpng-dev \
  libtool \
  nasm \
  zlib-dev

WORKDIR /tmp

# mediainfo
RUN \
  ZENLIB_VERSION=0.4.37 \
  && curl -L -O https://github.com/MediaArea/ZenLib/archive/v$ZENLIB_VERSION.tar.gz \
  && tar zxf v$ZENLIB_VERSION.tar.gz \
  && cd ZenLib-$ZENLIB_VERSION/Project/GNU/Library \
  && ./autogen.sh && ./configure --enable-static && make && make install
RUN \
  MEDIAINFO_VERSION=18.03.1 \
  && curl -L -O https://github.com/MediaArea/MediaInfoLib/archive/v$MEDIAINFO_VERSION.tar.gz \
  && tar zxf v$MEDIAINFO_VERSION.tar.gz \
  && cd MediaInfoLib-$MEDIAINFO_VERSION/Project/GNU/Library \
  && ./autogen.sh && ./configure --enable-static && make && make install

# imagemagick
RUN \
  curl -L -O https://www.imagemagick.org/download/ImageMagick.tar.gz \
  && tar zxf ImageMagick.tar.gz \
  && cd ImageMagick-* \
  && ./configure && make && make install


# advancecomp
# https://github.com/amadvance/advancecomp/releases
RUN \
  ADVANCECOMP_VERSION=2.1 \
  && curl -L -O https://github.com/amadvance/advancecomp/releases/download/v$ADVANCECOMP_VERSION/advancecomp-$ADVANCECOMP_VERSION.tar.gz \
  && tar zxf advancecomp-$ADVANCECOMP_VERSION.tar.gz \
  && cd advancecomp-$ADVANCECOMP_VERSION \
  && ./configure && make && make install

# gifsicle
# https://github.com/kohler/gifsicle/releases
RUN \
  GIFSICLE_VERSION=1.91 \
  && curl -L -O https://lcdf.org/gifsicle/gifsicle-$GIFSICLE_VERSION.tar.gz \
  && tar zxf gifsicle-$GIFSICLE_VERSION.tar.gz \
  && cd gifsicle-$GIFSICLE_VERSION \
  && autoreconf -i && ./configure && make && make install

# jhead
# https://github.com/danielgtaylor/jpeg-archive/releases
RUN \
  JHEAD_VERSION=3.00 \
  && curl -O http://www.sentex.net/~mwandel/jhead/jhead-$JHEAD_VERSION.tar.gz \
  && tar zxf jhead-$JHEAD_VERSION.tar.gz \
  && cd jhead-$JHEAD_VERSION \
  && make && make install

# jpeg-recompress (from jpeg-archive along with mozjpeg dependency)
# https://sourceforge.net/projects/optipng/files/OptiPNG/
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

# jpegoptim
# http://www.kokkonen.net/tjko/projects.html#jpegoptim
RUN \
  JPEGOPTIM_VERSION=1.4.6 \
  && curl -O http://www.kokkonen.net/tjko/src/jpegoptim-$JPEGOPTIM_VERSION.tar.gz \
  && tar zxf jpegoptim-$JPEGOPTIM_VERSION.tar.gz \
  && cd jpegoptim-$JPEGOPTIM_VERSION \
  && ./configure && make && make install

# jpegtran (from Independent JPEG Group)
# http://www.ijg.org/
RUN \
  IJG_VERSION=9c \
  && curl -O http://www.ijg.org/files/jpegsrc.v$IJG_VERSION.tar.gz \
  && tar zxf jpegsrc.v$IJG_VERSION.tar.gz \
  && cd jpeg-$IJG_VERSION \
  && ./configure && make && make install

# optipng
# https://sourceforge.net/projects/pmt/files/pngcrush/
RUN \
  OPTIPNG_VERSION=0.7.7 \
  && curl -L -O http://downloads.sourceforge.net/project/optipng/OptiPNG/optipng-$OPTIPNG_VERSION/optipng-$OPTIPNG_VERSION.tar.gz \
  && tar zxf optipng-$OPTIPNG_VERSION.tar.gz \
  && cd optipng-$OPTIPNG_VERSION \
  && ./configure && make && make install

# pngcrush
RUN \
  PNGCRUSH_VERSION=1.8.13 \
  && curl -L -O http://downloads.sourceforge.net/project/pmt/pngcrush/$PNGCRUSH_VERSION/pngcrush-$PNGCRUSH_VERSION.tar.gz \
  && tar zxf pngcrush-$PNGCRUSH_VERSION.tar.gz \
  && cd pngcrush-$PNGCRUSH_VERSION \
  && make && cp -f pngcrush /usr/local/bin

# pngout (binary distrib)
RUN \
  PNGOUT_VERSION=20150319 \
  && curl -O http://static.jonof.id.au/dl/kenutils/pngout-$PNGOUT_VERSION-linux-static.tar.gz \
  && tar zxf pngout-$PNGOUT_VERSION-linux-static.tar.gz \
  && cd pngout-$PNGOUT_VERSION-linux-static \
  && cp -f x86_64/pngout-static /usr/local/bin/pngout

# pngquant
# https://github.com/pornel/pngquant/releases
# https://github.com/ImageOptim/libimagequant/releases
RUN \
  PNGQUANT_VERSION=2.11.7 \
  LIBIMAGEQUANT_VERSION=2.11.10 \
  && curl -L -O https://github.com/ImageOptim/libimagequant/archive/$LIBIMAGEQUANT_VERSION.tar.gz \
  && tar xzf $LIBIMAGEQUANT_VERSION.tar.gz \
  && curl -L -O https://github.com/pornel/pngquant/archive/$PNGQUANT_VERSION.tar.gz \
  && tar xzf $PNGQUANT_VERSION.tar.gz \
  && mv libimagequant-$LIBIMAGEQUANT_VERSION/* pngquant-$PNGQUANT_VERSION/lib/ \
  && cd pngquant-$PNGQUANT_VERSION \
  && ./configure && make && make install

RUN \
  WKHTMLTOX_VERSION=0.12.4 \
  && curl -L -o wkhtmltox.tar.xz https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/$WKHTMLTOX_VERSION/wkhtmltox-${WKHTMLTOX_VERSION}_linux-generic-amd64.tar.xz \
  && tar xf wkhtmltox.tar.xz \
  && cp wkhtmltox/bin/wkhtmltopdf /usr/local/bin \
  && cp wkhtmltox/bin/wkhtmltoimage /usr/local/bin

FROM starefossen/ruby-node:alpine

COPY --from=alpine-packages /usr/local/bin /usr/local/bin
