FROM hexpm/elixir:1.10.0-erlang-22.0.3-alpine-3.12.0

RUN apk add --no-cache git
RUN apk add --no-cache rust
RUN apk add --update --no-cache netcat-openbsd
