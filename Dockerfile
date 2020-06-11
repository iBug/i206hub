FROM ruby:2.7
MAINTAINER iBug <i@ibugone.com>

ADD . /app
WORKDIR /app
RUN bundle install --deployment --without development test
ENV RAILS_ENV=production
EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "--environment=production", "--no-daemon", "--log-to-stdout"]
