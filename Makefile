VERSION := 31.1
NAME := emacs

SOURCES := \
	$(NAME)-$(VERSION).tar.xz \
	$(NAME)-$(VERSION).tar.xz.sig

.PHONY: srpm

srpm: $(SOURCES)
	rpmbuild -bs \
		--define "_sourcedir $(CURDIR)" \
		--define "_srcrpmdir $(CURDIR)" \
		$(NAME).spec

$(NAME)-$(VERSION).tar.xz:
	curl -L -O https://ftp.gnu.org/gnu/emacs/$@

$(NAME)-$(VERSION).tar.xz.sig:
	curl -L -O https://ftp.gnu.org/gnu/emacs/$@
