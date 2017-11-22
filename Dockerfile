FROM ruby:2.3.1

RUN gem install foreman

WORKDIR /usr/src/app

COPY Gemfile* ./
RUN bundle install
COPY . .
CMD ["./docker_run.sh"]

EXPOSE 3000