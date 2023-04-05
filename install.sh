#!/bin/sh

if [ "$(uname)" = 'Linux' ]; then
	CONFIG="${HOME}/.config/environment.d/envvars.conf"
	CONTENTS="MOZ_ENABLE_WAYLAND=1"
	if grep "$CONTENTS" "$CONFIG" >/dev/null 2>&1; then
		echo "Firefox config is already installed."
	else
		echo "$CONTENTS" >>"$CONFIG"
	fi
fi
