FROM python:3.8-alpine

ARG SSR_URL=https://github.com/winterssy/shadowsocksr/archive/manyuser.zip

RUN apk add --no-cache libsodium && \
    pip --no-cache-dir install $SSR_URL

WORKDIR /app

COPY etc/config.json .

CMD ["ssserver", "-c", "config.json"]
