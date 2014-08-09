FROM railsbase

ADD . /app
WORKDIR /app
RUN bundle install --without development test
RUN bundle exec rake tmp:create;\
    bundle exec rake assets:precompile
ADD supervisord.conf /etc/supervisor/supervisord.conf
CMD ["/usr/bin/supervisord"]

