FROM smikino/ruby-node:3.1-16-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
  advancecomp \
  # autoconf \
  # automake \
  # build-essential \
  bzip2 \
  curl \
  jhead \
  jpegoptim \
  imagemagick \
  # libexpat1-dev \
  # libglib2.0-dev \
  libexif12 \
  libgomp1 \
  libjpeg62-turbo \
  libpng16-16 \
  libtool \
  libvips42 \
  libwebp6 \
  mediainfo \
  nasm \
  optipng \
  pngcrush \
  pngquant

WORKDIR /tmp

# # bzip2
# RUN \
#   BZIP2_VERSION=1.0.8 \
#   && curl -L -O https://sourceware.org/pub/bzip2/bzip2-$BZIP2_VERSION.tar.gz \
#   && tar zxf bzip2-$BZIP2_VERSION.tar.gz \
#   && cd bzip2-$BZIP2_VERSION \
#   && make PREFIX=/usr/local && make install

# # libjpeg
# RUN \
#   LIBJPEG_TURBO_VERSION=1.5.3 \
#   && curl -L -O https://sourceforge.net/projects/libjpeg-turbo/files/$LIBJPEG_TURBO_VERSION/libjpeg-turbo-$LIBJPEG_TURBO_VERSION.tar.gz \
#   && tar zxf libjpeg-turbo-$LIBJPEG_TURBO_VERSION.tar.gz \
#   && cd libjpeg-turbo-$LIBJPEG_TURBO_VERSION \
#   && ./configure --prefix /usr/local --with-jpeg8 && make && make install

# # libpng
# RUN \
#   LIBPNG_VERSION=1.6.37 \
#   && curl -L -O https://sourceforge.net/projects/libpng/files/libpng16/$LIBPNG_VERSION/libpng-$LIBPNG_VERSION.tar.gz \
#   && tar zxf libpng-$LIBPNG_VERSION.tar.gz \
#   && cd libpng-$LIBPNG_VERSION \
#   && ./configure --prefix /usr/local && make && make install

# libwebp
# RUN \
#   LIBWEBP_VERSION=1.1.0 \
#   && curl -L -O https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-$LIBWEBP_VERSION.tar.gz \
#   && tar zxf libwebp-$LIBWEBP_VERSION.tar.gz \
#   && cd libwebp-$LIBWEBP_VERSION \
#   && ./configure --prefix /usr/local --enable-libwebpmux --enable-libwebpdemux && make && make install

# # advancecomp
# # https://github.com/amadvance/advancecomp/releases
# RUN \
#   ADVANCECOMP_VERSION=2.1 \
#   && curl -L -O https://github.com/amadvance/advancecomp/releases/download/v$ADVANCECOMP_VERSION/advancecomp-$ADVANCECOMP_VERSION.tar.gz \
#   && tar zxf advancecomp-$ADVANCECOMP_VERSION.tar.gz \
#   && cd advancecomp-$ADVANCECOMP_VERSION \
#   && ./configure --prefix /usr/local && make && make install

# # gifsicle
# # https://github.com/kohler/gifsicle/releases
# RUN \
#   GIFSICLE_VERSION=1.92 \
#   && curl -L -O https://lcdf.org/gifsicle/gifsicle-$GIFSICLE_VERSION.tar.gz \
#   && tar zxf gifsicle-$GIFSICLE_VERSION.tar.gz \
#   && cd gifsicle-$GIFSICLE_VERSION \
#   && autoreconf -i && ./configure --prefix /usr/local && make && make install

# # jhead
# # http://www.sentex.net/~mwandel/jhead/
# RUN \
#   JHEAD_VERSION=3.04 \
#   && curl -O https://www.sentex.ca/~mwandel/jhead/jhead-$JHEAD_VERSION.tar.gz \
#   && tar zxf jhead-$JHEAD_VERSION.tar.gz \
#   && cd jhead-$JHEAD_VERSION \
#   && make && make install

# # jpeg-recompress (from jpeg-archive along with mozjpeg dependency)
# # https://github.com/mozilla/mozjpeg/releases
# RUN \
#   MOZJPEG_VERSION=4.1.1 \
#   && curl -L -O https://github.com/mozilla/mozjpeg/archive/v$MOZJPEG_VERSION.tar.gz \
#   && tar zxf v$MOZJPEG_VERSION.tar.gz \
#   && cd mozjpeg-$MOZJPEG_VERSION \
#   && autoreconf -fiv && ./configure && make && make install

# # jpeg-archive
# # https://github.com/danielgtaylor/jpeg-archive/releases
# RUN \
#   JPEGARCHIVE_VERSION=2.2.0 \
#   && curl -L -O https://github.com/danielgtaylor/jpeg-archive/archive/v$JPEGARCHIVE_VERSION.tar.gz \
#   && tar zxf v$JPEGARCHIVE_VERSION.tar.gz \
#   && cd jpeg-archive-$JPEGARCHIVE_VERSION \
#   && make && make install

# # jpegoptim
# # http://www.kokkonen.net/tjko/projects.html#jpegoptim
# RUN \
#   JPEGOPTIM_VERSION=1.4.6 \
#   && curl -O https://www.kokkonen.net/tjko/src/jpegoptim-$JPEGOPTIM_VERSION.tar.gz \
#   && tar zxf jpegoptim-$JPEGOPTIM_VERSION.tar.gz \
#   && cd jpegoptim-$JPEGOPTIM_VERSION \
#   && ./configure --prefix /usr/local && make && make install

# # jpegtran (from Independent JPEG Group)
# # http://www.ijg.org/
# RUN \
#   IJG_VERSION=9c \
#   && curl -O http://www.ijg.org/files/jpegsrc.v$IJG_VERSION.tar.gz \
#   && tar zxf jpegsrc.v$IJG_VERSION.tar.gz \
#   && cd jpeg-$IJG_VERSION \
#   && ./configure --prefix /usr/local && make && make install

# # optipng
# # https://sourceforge.net/projects/optipng/files/OptiPNG/
# RUN \
#   OPTIPNG_VERSION=0.7.7 \
#   && curl -L -O https://sourceforge.net/projects/optipng/files/OptiPNG/optipng-$OPTIPNG_VERSION/optipng-$OPTIPNG_VERSION.tar.gz \
#   && tar zxf optipng-$OPTIPNG_VERSION.tar.gz \
#   && cd optipng-$OPTIPNG_VERSION \
#   && ./configure && make && make install

# # pngcrush
# # https://sourceforge.net/projects/pmt/files/pngcrush/
# RUN \
#   PNGCRUSH_VERSION=1.8.13 \
#   && curl --location-trusted -O https://sourceforge.net/projects/pmt/files/pngcrush/$PNGCRUSH_VERSION/pngcrush-$PNGCRUSH_VERSION.tar.gz \
#   && tar zxf pngcrush-$PNGCRUSH_VERSION.tar.gz \
#   && cd pngcrush-$PNGCRUSH_VERSION \
#   && make && cp -f pngcrush /usr/local/bin

# # pngout (binary distrib)
# # http://www.jonof.id.au/kenutils
# RUN \
#   PNGOUT_VERSION=20200115 \
#   && curl -O http://www.jonof.id.au/files/kenutils/pngout-$PNGOUT_VERSION-linux.tar.gz \
#   && tar zxf pngout-$PNGOUT_VERSION-linux.tar.gz \
#   && cd pngout-$PNGOUT_VERSION-linux \
#   && cp -f amd64/pngout /usr/local/bin/pngout

# # pngquant
# # https://github.com/pornel/pngquant/releases
# # https://github.com/ImageOptim/libimagequant/releases
# RUN \
#   PNGQUANT_VERSION=2.12.6 \
#   LIBIMAGEQUANT_VERSION=2.12.6 \
#   && curl -L -O https://github.com/ImageOptim/libimagequant/archive/$LIBIMAGEQUANT_VERSION.tar.gz \
#   && tar xzf $LIBIMAGEQUANT_VERSION.tar.gz \
#   && curl -L -O https://github.com/pornel/pngquant/archive/$PNGQUANT_VERSION.tar.gz \
#   && tar xzf $PNGQUANT_VERSION.tar.gz \
#   && mv libimagequant-$LIBIMAGEQUANT_VERSION/* pngquant-$PNGQUANT_VERSION/lib/ \
#   && cd pngquant-$PNGQUANT_VERSION \
#   && ./configure --prefix /usr/local && make && make install

# # mediainfo
# # https://github.com/MediaArea/ZenLib/releases
# # https://github.com/MediaArea/MediaInfoLib/releases
# RUN \
#   ZENLIB_VERSION=0.4.37 \
#   && curl -L -O https://github.com/MediaArea/ZenLib/archive/v$ZENLIB_VERSION.tar.gz \
#   && tar zxf v$ZENLIB_VERSION.tar.gz \
#   && cd ZenLib-$ZENLIB_VERSION/Project/GNU/Library \
#   && ./autogen.sh && ./configure --prefix /usr/local --enable-static && make && make install
# RUN \
#   MEDIAINFO_VERSION=19.09 \
#   && curl -L -O https://github.com/MediaArea/MediaInfoLib/archive/v$MEDIAINFO_VERSION.tar.gz \
#   && tar zxf v$MEDIAINFO_VERSION.tar.gz \
#   && cd MediaInfoLib-$MEDIAINFO_VERSION/Project/GNU/Library \
#   && ./autogen.sh && ./configure --prefix /usr/local --enable-static && make && make install \
#   && curl -L -O https://github.com/MediaArea/MediaInfo/archive/v$MEDIAINFO_VERSION.tar.gz \
#   && tar zxf v$MEDIAINFO_VERSION.tar.gz \
#   && cd MediaInfo-$MEDIAINFO_VERSION/Project/GNU/CLI \
#   && ./autogen.sh && ./configure --prefix /usr/local --enable-static --enable-staticlibs && make && make install

# # imagemagick
# RUN \
#   curl -L -O https://www.imagemagick.org/download/ImageMagick.tar.gz \
#   && tar zxf ImageMagick.tar.gz \
#   && cd ImageMagick-* \
#   && ./configure --prefix /usr/local --enable-shared=no --with-modules=no && make && make install

# # vips
# # https://github.com/jcupitt/libvips/releases/
# RUN \
#   VIPS_VERSION=8.9.2 \
#   && curl -L -O https://github.com/libvips/libvips/releases/download/v$VIPS_VERSION/vips-$VIPS_VERSION.tar.gz\
#   && tar zxf vips-$VIPS_VERSION.tar.gz \
#   && cd vips-$VIPS_VERSION \
#   && ./configure --prefix /usr/local --with-modules=no --without-magick && make && make install
