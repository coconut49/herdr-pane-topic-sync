#!/bin/sh
# A Herdr server started over SSH inherits sshd's PATH, which lacks the user and Homebrew bin dirs node lives in.
PATH="$HOME/.local/bin:$HOME/bin:/opt/homebrew/bin:/home/linuxbrew/.linuxbrew/bin:$HOME/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/usr/local/bin:$PATH"
export PATH
exec node sync-labels.mjs "$@"
