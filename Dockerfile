FROM --platform=$BUILDPLATFORM busybox:stable

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]