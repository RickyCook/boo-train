FROM debian:jessie

EXPOSE 3000
ENTRYPOINT ["/code/entrypoint.sh"]
CMD ["serve"]

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y ruby bundler libsqlite3-dev

RUN useradd --system --user-group --shell /usr/sbin/nologin --comment "App server user" app
RUN mkdir -p /code/vendor/bundle
WORKDIR /code

RUN echo 'gem: --no-rdoc --no-ri' > /etc/gemrc

ADD Gemfile /code/Gemfile
ADD Gemfile.lock /code/Gemfile.lock
RUN bundle install --deployment

ADD . /code

RUN chown -R app:app /code
USER app
