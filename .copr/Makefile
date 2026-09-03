outdir ?= .
spec ?= emacs.spec

srpm:
	rpmbuild -bs \
	  --define "_sourcedir $(CURDIR)" \
	  --define "_srcrpmdir $(outdir)" \
	  $(spec)
