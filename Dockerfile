FROM scratch
MAINTAINER seansummers@gmail.com
COPY sbin/apk.static /sbin/apk
COPY repositories /etc/apk/
# if you are using >= :3.19-tiny you must use the apk command
# below to install anything
# if you are using >= :3.19-keys-ca then this has been done for you
RUN [ "/sbin/apk", "--allow-untrusted", "--initdb", "--no-check-certificate", "add", "alpine-keys", "ca-certificates" ]
