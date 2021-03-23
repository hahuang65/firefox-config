#!/bin/sh

if [ $(uname) = 'Linux' ]; then
  ln -sf "${PWD}/config" "${HOME}/.pam_environment"
fi
