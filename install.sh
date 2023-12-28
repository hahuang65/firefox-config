#!/bin/sh

CONFIG_DIR="${HOME}/.config/tridactyl"
THEME_DIR="${CONFIG_DIR}/themes"
mkdir -p "${THEME_DIR}"
ln -sf "${PWD}/tridactylrc" "${CONFIG_DIR}"
ln -sf "${PWD}/catppuccin.css" "${THEME_DIR}"
echo "Don't forget to run :nativeinstall in Tridactyl to be able to source tridactylrc"

if [ "$(uname)" = 'Darwin' ]; then
  echo ":nativeinstall may not work on macOS. Check out https://github.com/tridactyl/tridactyl/issues/4298 for a workaround"
fi
