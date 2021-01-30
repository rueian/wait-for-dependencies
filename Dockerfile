FROM --platform=$TARGETPLATFORM busybox:stable

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]