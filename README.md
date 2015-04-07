Watch
=====

Usage: `watch [-v] [-p <path>] [-x <regexp>] [-i <regexp>] [-b <path>] <command>`

Watches for changes in a directory tree, and runs a command when something changed.

-v enables verbose debugging output

-p <path> specifies the path to watch (if it is a directory then it watches recursively)

-x <regexp> specifies a regexp used to exclude files and directories from the watcher.

-i <regexp> specifies a regexp used to ignore files that events fire on. Useful when observing a directory tree and new files are being created.

-b <path> specifies a basepath. all paths will be made relative to this basepath when they are passed to the script.
