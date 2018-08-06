FROM alpine:latest

MAINTAINER kramos <markosrendell@gmail.com>

RUN apk add --update zip

# Install the OpenJDK Java 8 Runtime (no GUI support)
RUN apk add --no-cache openjdk8-jre-base

# Install the Git distributed version control system
RUN apk add --no-cache git

ENTRYPOINT ["zip"]

CMD ["-h"]
