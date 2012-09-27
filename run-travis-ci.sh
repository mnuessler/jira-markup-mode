#!/bin/sh

if [ `uname` = "Darwin" ]; then
  # for local testing only
  EMACS="/Applications/Emacs.app/Contents/MacOS/Emacs"
elif [ `which emacs-snapshot` != "" ]; then
  EMACS="$(which emscs-snapshot)"
else
  EMACS="$(which emacs)"
fi

echo "Found emacs: $EMACS"
$EMACS --version

$EMACS -batch \
-l ert \
-l jira-markup-mode.el \
-l jira-markup-mode-test.el \
-f ert-run-tests-batch-and-exit

