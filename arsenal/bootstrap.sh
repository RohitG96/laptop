#!/usr/bin/env bash
# vi: ft=sh

trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT
set -e
fancy_say() {
  printf "\n%b\n" "$1"
  say "$1"
}

fancy_say "Starting the laptop setup script..."
sudo -v

if [[ ! -f "/tmp/""$USERNAME""/laptop/laptop-install" ]]; then
  rm -rf "/tmp/""$USERNAME"
  mkdir -p "/tmp/""$USERNAME"
  cd "/tmp/""$USERNAME""/"
  ssh-agent bash -c 'cd /tmp/""$USERNAME""; ssh-add ~/.ssh/github;  git clone --depth=1 git@github.com:""$USERNAME""/laptop.git'
fi
source "/tmp/""$USERNAME""/laptop/laptop-install"

fancy_say "All done. Please reboot."
