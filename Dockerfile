FROM ruby:2.5.0

# aplication name
ENV APP_NAME "sandbox_manager"

# install softwares
RUN apt-get update -qq
RUN apt-get install -y nginx openssh-server git-core openssh-client curl
RUN apt-get install -y build-essential git tig vim tmux ssh
RUN apt-get install -y openssl libreadline6-dev curl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config postgresql-client vim 

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash
RUN apt-get install -y nodejs

# application
RUN mkdir /$APP_NAME
WORKDIR /$APP_NAME/$app_name
ADD Gemfile /$APP_NAME/Gemfile
ADD Gemfile.lock /$APP_NAME/Gemfile.lock
RUN bundle install
ADD . /$APP_NAME
