FROM elixir:1.4.2
MAINTAINER Dave Walk <daviddwalk@gmail.com>

RUN mix local.hex --force

RUN mix local.rebar --force

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y -q nodejs

WORKDIR /app
