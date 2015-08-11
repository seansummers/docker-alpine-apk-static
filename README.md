[Alpine Linux](http://www.alpinelinux.org/) for Docker
============

This is a minimum viable Alpine image: only alpine-keys
installed (to allow for signed package installing using
`/sbin/apk.static`).

The repository cache has been updated (with one mirror).

You will have to install busybox-static, busybox, 
alpine-baselayout, or alpine-base if you want a shell
(in order of size).

As of 2015-08-10, this image is 2.838 MB.
As of 2015-05-19, this image is 8.895 MB.

https://hub.docker.com/r/seansummers/alpine-apk-static/
