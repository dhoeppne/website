FROM --platform=linux/amd64 node:18-alpine AS build

WORKDIR /app
COPY . .

RUN export NODE_OPTIONS=--openssl-legacy-provider
RUN apk update -qq && apk add -qq libtool automake autoconf nasm vips fftw binutils build-base util-linux
RUN yarn
RUN yarn gatsby telemetry --disable
RUN yarn build

EXPOSE 80

FROM --platform=linux/amd64 nginx:1.18-alpine AS deploy

WORKDIR /usr/share/nginx/html
RUN export NODE_OPTIONS=--openssl-legacy-provider
RUN rm -rf ./*
COPY --from=build /app/public .
ENTRYPOINT ["nginx", "-g", "daemon off;"]
