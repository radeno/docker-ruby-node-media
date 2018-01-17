FROM starefossen/ruby-node:alpine

RUN apk add --no-cache --virtual .ruby-gems-builddeps \
  gcc \
  g++ \
  make \
  libc-dev \
  mariadb-dev \
  git

RUN apk add --no-cache --virtual .ruby-gems-rundeps \
  tzdata \
  mariadb-client
