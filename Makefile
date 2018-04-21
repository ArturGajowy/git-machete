BINDIR = /usr/local/bin
BINFILES = git-machete track-prs-bb

COMPDIR = /etc/bash_completion.d
COMPFILE = git-machete-prompt

.PHONY: all install uninstall

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	install -d $(BINDIR)
	install -m 0755 $(BINFILES) $(BINDIR)
	install -d $(COMPDIR)
	install -m 0644 $(COMPFILE) $(COMPDIR)

uninstall:
	cd $(BINDIR) && rm -f $(BINFILES)
	cd $(COMPDIR) && rm -f $(COMPFILE)
