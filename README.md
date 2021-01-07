# Installing

Make sure you have git, aspell, and rg (ripgrep) installed. On Mac OS X:
```
brew install ripgrep git aspell
```

Make sure you have these python packages installed:
```
pip install pylint flake8
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

### Projectile
Projectile is a suite of project-focused commands. Projectile considers every git repository a
"project".

- `C-c p h` performs a fuzzy-search for files in this project.
- `C-c p s r` performs a `ripgrep` search over all files in this project. If your cursor is sitting
  on a "word" (basically any sequence of non-whitespace, non-quote characters), `C-c p s r RET` will
  search for that word. This is how I do project-wide search for uses of a Python constant.
- `C-c p c` "compiles" the current project. If I'm working on Python code, the first time I open a
  Python file I run `C-c p c make -j16 check-all RET` and then every subsequent time I want to check
  the syntax of the whole project, I can just run `C-c p c RET`

### Python
When editing Python, there are three important Emacs packages: `elpy`, `flycheck`, and `pyvenv`.

You'll need to install a few packages to make `elpy` work properly. `M-x elpy-config` will guide you
through this process. Do not install jedi 0.18.0. Instead notice which Python binary elpy is using
and run:

```
/foo/bar/python -m pip install 'jedi<0.18'
```

You need to activate the right python environment using `M-x pyvenv-activate`. You can make this
permanent with a Directory Local variable. For example, open `/path/to/hail/.dir-locals2.el` and add:

```
;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((nil . ((pyvenv-activate . "/path/to/your/miniconda3/envs/hail"))))
```

Flycheck is an Emacs package for on-the-fly syntax, type, etc. checking. You should see visual
markers (e.g. squiggly red lines) on code flagged by the syntax checkers. You can list all errors in
the current buffer with `C-c ! l`.


### Magit
Magit is a remarkably powerful tool for interacting with Git. It's also a bit complicated. Start by
opening the status buffer with `M-x magit`. On that buffer, press `?` to get a help page. On this
buffer, most keypresses are a command. For example, `f u` fetches from the upstream (in my case,
origin).


### Opening Files from the Command Line
This configuration of Emacs always starts in server-mode. From the command line you can run:

```
emacsclient file
```

And `file` will be opened in the already running GUI Emacs. I recommend setting your `EDITOR`
environment variable to `emacsclient`. If `EDITOR` is set to `emacsclient`, git will open commit
messages in Emacs.
