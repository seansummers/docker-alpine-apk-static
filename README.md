[Alpine Linux](http://www.alpinelinux.org/) for Docker
============

[GitHub Repo](https://github.com/seansummers/docker-alpine-apk-static/)

This is a minimum viable Alpine image: only alpine-keys
installed (to allow for signed package installing using
`/sbin/apk.static`).

The repository cache has been updated (with one mirror).

You will have to install busybox-static, busybox, 
alpine-baselayout, or alpine-base if you want a shell
(in order of size).

# Breaking Changes

For the 3.19 images, the apk executable is now
`/sbin/apk`.

The `-keys-ca` repo has been initialized with alpine-keys
and ca-certificates, to allow verified installing with `/sbin/apk`

The `-tiny` repo **only** has `/sbin/apk` and you must use this
command line to install anything:

`/sbin/apk --allow-untrusted --initdb --no-check-certificate add`


# Image sizes

| Date | Size | tag
| --- | --- | ---: 
| 2024-01-29 | 4.37   MB | 3.19-tiny
| 2024-01-29 | 11.8   MB | 3.19-keys-ca
| 2016-05-20 |  2.805 MB | 3.4
| 2015-08-10 |  2.838 MB
| 2015-05-19 |  8.895 MB

https://hub.docker.com/r/seansummers/alpine-apk-static/

