FROM elixir:alpine

RUN mix local.hex --force
RUN mix local.rebar --force

RUN mkdir /app
WORKDIR /app

COPY . /app

RUN mix deps.get
RUN MIX_ENV=prod mix compile

CMD MIX_ENV=prod mix phx.server
