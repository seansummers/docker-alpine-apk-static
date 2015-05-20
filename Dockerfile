FROM scratch
MAINTAINER seansummers@gmail.com
ADD sbin/apk.static /sbin/
#ADD etc/apk/repositories /etc/apk/
RUN [ "/sbin/apk.static", "--allow-untrusted", "-U", "-X", "http://dl-3.alpinelinux.org/alpine/v3.2/main", \
      "add", "--initdb", "-u", \
      "alpine-keys" ]
