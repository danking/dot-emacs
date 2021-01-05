# Getting Started
## Emacs
### Learning Emacs
- https://www.gnu.org/software/emacs/tour/

### Themes
There are a few themes already installedd.

### Flycheck
Flycheck is an Emacs package for on-the-fly syntax, type, etc. checking. You should see visual
markers (e.g. squiggly red lines) on code flagged by the syntax checkers. You can list all errors in
the current buffer with C-c ! l.

### Elpy
You'll need to install a few packages to make elpy work properly. M-x elpy-config will guide you
through this process.

### Magit
Magit is a remarkably powerful tool for interacting with Git. It's also a bit complicated. Start by
opening the status buffer with M-x magit. On that buffer, press ? to get a help page. On this
buffer, most keypresses are a command. For example, f u fetches from the upstream (in my case,
origin).
