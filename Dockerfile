FROM hexpm/elixir:1.10.0-erlang-22.0.3-alpine-3.12.0

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
