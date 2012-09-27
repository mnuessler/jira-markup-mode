#!/bin/sh

if [ `uname` = "Darwin" ]; then
  EMACS="/Applications/Emacs.app/Contents/MacOS/Emacs"
else
  EMACS="$(which emacs)"
fi

echo "Using emacs: $EMACS"
$EMACS --version

$EMACS -batch -l ert -l jira-markup-mode.el -l jira-markup-mode-test.el -f ert-run-tests-batch-and-exit

