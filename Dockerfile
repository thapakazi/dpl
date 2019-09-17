FROM ruby:alpine
MAINTAINER ops@dibya.org

RUN apk add --no-cache git
RUN gem install dpl --no-document

CMD ["dpl","--version"]
