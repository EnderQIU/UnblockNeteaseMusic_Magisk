MODVERSION := $(shell sed -n 's/version=\(.*\)/\1/p' module.prop)
MOD := UnblockNeteaseMusic_Magisk
ZIP := $(MOD)-$(MODVERSION).zip
CURDIR := $(shell pwd)

MODFILES := common META-INF system customize.sh install.sh module.prop post-fs-data.sh service.sh uninstall.sh

.PHONY:

all: out/$(ZIP)

out/$(ZIP):
	cd $(CURDIR); \
		zip -qr out/$(ZIP) $(MODFILES)

distclean:
	rm -rf out/*.zip
