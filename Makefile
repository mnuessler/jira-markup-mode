emacs ?= emacs
all: test

test: clean
	cask exec emacs -Q -batch -l jira-markup-mode.el -l jira-markup-mode-test.el -f ert-run-tests-batch-and-exit

compile:
	$(emacs) -Q -batch -f batch-byte-compile jira-markup-mode.el

clean:
	rm -f f.elc

.PHONY:	all test
