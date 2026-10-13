# homebrew-rcmdnkpac

Homebrew tap for [rcmdnk](https://github.com/rcmdnk)'s packages, plus a few related tools.

## Usage

Tap the repository and install a formula:

    $ brew tap rcmdnk/rcmdnkpac
    $ brew install sentaku

or install with the full name without tapping first:

    $ brew install rcmdnk/rcmdnkpac/sentaku

Recent Homebrew loads formulae from a third-party tap only after you trust it.
If `brew` refuses to load a formula from this tap, run:

    $ brew trust rcmdnk/rcmdnkpac

With [brew-file](https://github.com/rcmdnk/homebrew-file), add to your Brewfile:

    tap 'rcmdnk/rcmdnkpac'
    brew 'sentaku'

or use `tapall 'rcmdnk/rcmdnkpac'` to install everything in this tap.

## CI

The `Test formulae` GitHub Actions workflow runs on every push and pull request,
and can also be started manually. It discovers all `.rb` formulae in the repository
root and `Formula/`, checks that each has a README list entry with a description,
then installs each from source in a separate macOS job.
HEAD-only formulae are installed with `--HEAD`. Formulae with a `test do` block
also run `brew test`; those without one report installation-only validation.
Deprecated formulae are included. Reference files such as `linkchecker.rb.notuse`
are excluded.

Run the README coverage check locally with:

    python3 -m unittest discover -s tests -v

## Formulae

### Shell functions

These formulae install a file to `$(brew --prefix)/etc/<name>`
that defines shell functions for Bash and Zsh.
Source it in your `.bashrc` or `.zshrc`:

    source "$(brew --prefix)/etc/cs"

- [cs](https://github.com/rcmdnk/cs): Start claude ([Claude Code](https://github.com/anthropics/claude-code)) with session selection
- [sd_cl](https://github.com/rcmdnk/sd_cl): Useful functions to change directories for Bash/Zsh and GNU screen/tmux
- [shell-logger](https://github.com/rcmdnk/shell-logger): Logger for shell script

### Commands

- [ec2](https://github.com/rcmdnk/ec2): AWS CLI wrapper for EC2
- [escape_sequence](https://github.com/rcmdnk/escape_sequence): Scripts for checking escape sequences
- [evernote_mail](https://github.com/rcmdnk/evernote_mail): Script to send files/comments to Evernote by a mail
- [gcp-tools](https://github.com/rcmdnk/gcp-tools): Tools for Google Cloud Platform
- [git-gpt-commit](https://github.com/rcmdnk/git-gpt-commit): Git command to make a commit message by LLM
- [gtask](https://github.com/rcmdnk/gtask): List up google tasks from a command line
- [inputsource](https://github.com/hnakamur/inputsource): Command line tool to select text input source on macOS
- [multi_clipboard](https://github.com/rcmdnk/multi_clipboard): Clipboard manager for GNU screen
- [open_newtab](https://github.com/rcmdnk/open_newtab): Wrapper for macOS's open command to open folder in new tab of Finder instead of new window
- [parse-plist](https://github.com/rcmdnk/parse-plist): Parser of plist in macOS
- [po](https://github.com/rcmdnk/ParallelOperation): Parallel operation by using Tmux
- [rcmdnk-sshrc](https://github.com/rcmdnk/sshrc): Bring your .bashrc, .vimrc, etc. with you when you SSH. Brew name with the **rcmdnk** prefix, to avoid conflict with other `sshrc` formulae
- [rcmdnk-trash](https://github.com/rcmdnk/trash): Remove command using a trash box. Brew name with the **rcmdnk** prefix, to avoid conflict with other `trash` formulae in Homebrew
- [sentaku](https://github.com/rcmdnk/sentaku): Utility to make sentaku (selection) window with shell command
- [shell-explorer](https://github.com/rcmdnk/shell-explorer): File explorer with preview, made with shell script (`se` command)
- [smenu](https://github.com/p-gen/smenu): Terminal utility that creates an interactive selection window from words read from standard input or a file
- [stow_reset](https://github.com/rcmdnk/stow_reset): Command to reset stow directory, especially for the case in which the package installs symbolic links

### Python tools

These are installed with their own virtualenv.

- [chatgpt-prompt-wrapper](https://github.com/rcmdnk/chatgpt-prompt-wrapper): Python CLI implementation for ChatGPT
- [cocoro](https://pypi.org/project/cocoro/): Tools for COCORO API (SHARP products)
- [gmail_filter_manager](https://github.com/rcmdnk/gmail_filter_manager): Gmail filter manager using YAML format

### Deprecated

- [screenutf8](https://www.gnu.org/software/screen): GNU screen 4.9 with UTF-8 patches. Deprecated since 2024-09-02: screen 5.0 and later in homebrew-core does not need these patches
- linkchecker (`linkchecker.rb.notuse`): Not installable, kept for reference only. It conflicted with Python's site-packages installed by `brew install python`
