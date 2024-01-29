ARCH = x86_64
CURL = curl -sL

sbin/apk.static: repositories
	$(eval MIRROR = $(shell sed 1q repositories)/$(ARCH)/)
	$(eval APK = $(shell $(CURL) $(MIRROR) \
		|sed -n 's:.*\(apk-tools-static.*apk\).*$$:\1:p'))
	$(CURL) -z $(APK) -o $(APK) $(MIRROR)$(APK) && tar xzf $(APK) $@

clean :
	-rm -rf *.apk sbin/
