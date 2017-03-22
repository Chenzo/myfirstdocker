FROM ruby:2.3.3


RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs


##mysql needs it's own container?
#RUN apt-get update -qq && apt-get install -y build-essential mysql-server mysql-client libmysqlclient-dev

RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp

