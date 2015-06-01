# Jira Markup Mode

[![Build Status][travis-badge]][travis]
[![Coverage Status][coveralls-badge]][coveralls]
[![MELPA][melpa-badge]][melpa]

> Please note: This project is still work in progress and
> functionality is only partially implemented yet.

Jira Markup Mode provides syntax highlighting and editing features for
the markup used by [Atlassian JIRA][jira] in a similar fashion as
[markdown-mode][mdmode] for Markdown syntax.

Jira Markup Mode does not interact with the JIRA issue tracker in any
way.  It is not meant as a replacement for [jira.el][jirael].

Use cases that come to mind:

* *Edit files in [Confluence][confl] markup for a Maven site.*

  Confluence markup is the same as the one used in JIRA.  There is a
  Doxia site renderer for Confluence markup, so it is possible to use
  Confluence to create pages for your Maven site instead of the
  cumbersome APT markup.

  Add the following to your `.emacs` file to automatically enable
  jira-markup-mode for Confluence markup files:

  `(add-to-list 'auto-mode-alist '("\\.confluence$"
  . jira-markup-mode))`

* *Edit the contents for browser text fields in your favourite editor
  (aka Emacs) instead of inside the browser.*

  It is a pain to write and edit longer texts such as issue
  descriptions and comments directly in the browser.  Luckily here is
  a Firefox add-on to the rescue: [It's All Text!][atxt].  It allows
  you to open the content of a browser text field in an external
  editor and after leaving the editor insert the updated text back
  into the original text field.

  Add the following to your `.emacs` file to automatically enable
  jira-markup-mode for files opened with [It's All Text!][atxt] from
  within JIRA (requires that the hostname of your JIRA installation
  contains 'jira'):

  `(add-to-list 'auto-mode-alist '("/itsalltext/.*jira.*\\.txt$"
  . jira-markup-mode))`


[jira]: http://www.atlassian.com/software/jira/overview/
[mdmode]: http://jblevins.org/projects/markdown-mode/
[jirael]: http://emacswiki.org/emacs/jira.el
[confl]: http://www.atlassian.com/software/confluence/overview/
[atxt]: https://addons.mozilla.org/en-US/firefox/addon/its-all-text/

[travis]: http://travis-ci.org/mnuessler/jira-markup-mode
[travis-badge]: https://travis-ci.org/mnuessler/jira-markup-mode.svg?branch=master
[coveralls]: https://coveralls.io/r/mnuessler/jira-markup-mode?branch=master
[coveralls-badge]: https://coveralls.io/repos/mnuessler/jira-markup-mode/badge.svg?branch=master
[melpa]: http://melpa.org/#/jira-markup-mode
[melpa-badge]: http://melpa.org/packages/jira-markup-mode-badge.svg
