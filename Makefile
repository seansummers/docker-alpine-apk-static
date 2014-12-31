SEED = http://dl-2.alpinelinux.org/alpine
VERSION = v3.1
ARCH = x86_64

CURL = curl -sL

sbin/apk.static: repositories
	$(eval MIRROR = $(shell sed 1q repositories)/$(ARCH)/)
	$(eval APK = $(shell $(CURL) $(MIRROR) \
		|sed -n 's:.*\(apk-tools-static.*apk\).*$$:\1:p'))
	$(CURL) -z $(APK) -o $(APK) $(MIRROR)$(APK) && tar xzf $(APK) $@

repositories:	MIRRORS.txt
	sed 's:$$:$(VERSION)/main:' $< >$@

MIRRORS.txt:
	$(CURL) -z $@ -o $@ $(SEED)/$@ \

clean :
	-rm -rf MIRRORS.txt repositories *.apk sbin/
