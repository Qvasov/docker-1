FROM ruby
RUN apt-get update -y && apt-get install -y nodejs sqlite3
ONBUILD COPY my_app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD EXPOSE 3000
ONBUILD RUN bundle install
ONBUILD RUN rails webpacker:install
ONBUILD RUN rake db:migrate && rake db:seed

# docker build -t ft-rails:on-build .