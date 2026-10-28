FROM alpine:3.24.3
RUN set -xe \
	&& apk add --update --no-progress --no-cache kea-dhcp4 \
	&& rm -rf /var/cache/apk/*
CMD ["/usr/sbin/kea-dhcp4", "-c", "/etc/kea/kea-dhcpd4.conf"]
