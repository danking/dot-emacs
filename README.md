# Installing

Make sure you have git, aspell, and rg (ripgrep) installed. On Mac OS X:
```
brew install ripgrep git aspell
```

Next, either download the `.emacs` file into your `$HOME` directory, or clone this repository and make a
symlink:
```
git clone https://github.com/danking/dot-emacs.git
ln -s $(PWD)/dot-emacs/.emacs ~/.emacs
```

# Use
## Emacs
### Learning Emacs
- https://www.gnu.org/software/emacs/tour/

### Themes
There are a few themes already installed. Change the default theme with: `M-x customize-themes`.

### Flycheck
Flycheck is an Emacs package for on-the-fly syntax, type, etc. checking. You should see visual
markers (e.g. squiggly red lines) on code flagged by the syntax checkers. You can list all errors in
the current buffer with `C-c ! l`.

### Projectile
Projectile is a suite of project-focused commands. Projectile considers every git repository a
"project".

- `C-c p h` performs a fuzzy-search for files in this project.
- `C-c p r` performs a `ripgrep` search over all files in this project.

### Elpy
You'll need to install a few packages to make elpy work properly. `M-x elpy-config` will guide you
through this process.

### Magit
Magit is a remarkably powerful tool for interacting with Git. It's also a bit complicated. Start by
opening the status buffer with `M-x magit`. On that buffer, press `?` to get a help page. On this
buffer, most keypresses are a command. For example, `f u` fetches from the upstream (in my case,
origin).
