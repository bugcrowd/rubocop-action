FROM ruby:2.7-alpine

LABEL com.github.actions.name="Rubocop checks"
LABEL com.github.actions.description="Lint your Ruby code in parallel to your builds"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="red"

LABEL maintainer="Alberto Gimeno <gimenete@gmail.com>"

COPY lib /action/lib

RUN apk add gcc musl-dev make

ENTRYPOINT ["/action/lib/entrypoint.sh"]
