FROM ruby:3.2.3-slim as builder

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY Gemfile* ./
COPY config.rb ./
COPY source/ ./source/
RUN bundle install
RUN bundle exec middleman build

FROM nginx:latest
WORKDIR /site
COPY config/server.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build /site/build
COPY bin/entry-point /site/bin/entry-point
RUN chmod +x /site/bin/entry-point

CMD ["/site/bin/entry-point"]