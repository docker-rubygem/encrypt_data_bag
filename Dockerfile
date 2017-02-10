FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.0

RUN gem install encrypt_data_bag --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["encrypt_data_bag"]
CMD ["--help"]
