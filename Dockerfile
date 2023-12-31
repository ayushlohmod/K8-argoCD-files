FROM ruby:3.2.1

WORKDIR /app

RUN gem install rails bundler

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000


CMD ["rails", "server", "-b", "0.0.0.0"]
