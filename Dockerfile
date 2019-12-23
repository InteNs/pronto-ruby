FROM adwerx/pronto-ruby:1.4.0

RUN gem install rubocop-rails rubocop-minitest

WORKDIR /runner

ENV GITHUB_WORKSPACE /runner

COPY . ./

ENTRYPOINT ["/runner/pronto"]
