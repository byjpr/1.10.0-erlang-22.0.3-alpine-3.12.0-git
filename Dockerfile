FROM hexpm/elixir:1.10.0-erlang-22.0.3-alpine-3.12.0

RUN apk add --no-cache git
RUN apk add --no-cache rust
RUN apk add --update --no-cache netcat-openbsd

RUN apk add curl gnupg coreutils

RUN curl https://keybase.io/codecovsecurity/pgp_keys.asc | gpg --import # One-time step
RUN curl -Os https://uploader.codecov.io/latest/alpine/codecov
RUN curl -Os https://uploader.codecov.io/latest/alpine/codecov.SHA256SUM
RUN curl -Os https://uploader.codecov.io/latest/alpine/codecov.SHA256SUM.sig
RUN gpg --verify codecov.SHA256SUM.sig codecov.SHA256SUM
RUN shasum -a 256 -c codecov.SHA256SUM

RUN chmod +x codecov
