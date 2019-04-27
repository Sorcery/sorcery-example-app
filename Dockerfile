FROM ruby:2.5.1

RUN apt-get update -y && apt-get install -y build-essential sqlite3 apt-utils libpq-dev imagemagick curl socat
RUN curl --silent --location https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install nodejs -y

ENV RAILS_ROOT /rails

RUN mkdir -p $RAILS_ROOT
WORKDIR $RAILS_ROOT
ADD . $RAILS_ROOT

RUN bundle install --jobs 20 --retry 5

EXPOSE 3000
