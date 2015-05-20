FROM scratch
MAINTAINER seansummers@gmail.com
ADD sbin/apk.static /sbin/
ADD etc/apk/repositories /etc/apk/
RUN [ "/sbin/apk.static", "--allow-untrusted", "-U", \
      "add", "--initdb", \
      "alpine-keys" ]
