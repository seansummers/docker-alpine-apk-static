FROM scratch
MAINTAINER seansummers@gmail.com
ADD repositories /etc/apk/
ADD sbin/apk.static /sbin/
RUN [ "/sbin/apk.static", "-U", "--allow-untrusted", "add", "--initdb", "alpine-keys" ]
