FROM alpine:3.13.4

RUN export DEV_PACKAGES="ruby-dev gcc musl-dev make g++" && \
    apk --no-cache add ruby $DEV_PACKAGES && \
    gem install fastlane fastlane-plugin-firebase_app_distribution && \
    apk --no-cache del $DEV_PACKAGES

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8