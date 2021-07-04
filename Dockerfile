FROM hexpm/elixir:1.10.0-erlang-22.0.3-alpine-3.12.0

RUN apk add --no-cache git=2.22.2-r0 \
    --repository https://alpine.global.ssl.fastly.net/alpine/v3.10/community \
    --repository https://alpine.global.ssl.fastly.net/alpine/v3.10/main
