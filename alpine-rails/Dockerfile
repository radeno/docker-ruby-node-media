FROM smikino/ruby-node-media:alpine

RUN apk add --no-cache --virtual .ruby-gems-builddeps \
  gcc \
  g++ \
  make \
  libc-dev \
  mariadb-dev \
  git

RUN apk add --no-cache --virtual .ruby-gems-rundeps \
  tzdata \
  mariadb-client \
  mariadb-client-libs
