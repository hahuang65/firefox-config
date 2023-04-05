#!/bin/sh

if [ "$(uname)" = 'Linux' ]; then
	ENVVAR_FILE="${HOME}/.config/environment.d/envvars.conf"
	CONTENTS="MOZ_ENABLE_WAYLAND=1"
	if ! grep "$CONTENTS" "$ENVVAR_FILE" >/dev/null 2>&1; then
		echo "$CONTENTS" >>"$ENVVAR_FILE"
	fi
fi

CONFIG_DIR="${HOME}/.config/tridactyl"
THEME_DIR="${CONFIG_DIR}/themes"
mkdir -p "${THEME_DIR}"
ln -sf "${PWD}/tridactylrc" "${CONFIG_DIR}"
ln -sf "${PWD}/catppuccin.css" "${THEME_DIR}"
echo "Don't forget to run :nativeinstall in Tridactyl to be able to source tridactylrc"
