#!/usr/bin/env bash

echo "Please copy the \`Profile Folder\` path  from about:support and come back here."
read -n 1 -s -r -p "Press any key to open Firefox to about:support"

firefox about:support

echo
echo
echo "Paste the \`Profile Folder\` here:"
read -r profile_path
mkdir -p "$profile_path/chrome"
ln -sf "${PWD}/userChrome.css" "$profile_path/chrome/userChrome.css"

echo
echo "Please search for \`userprof\` in about:config then turn \`toolkit.legacyUserProfileCustomizations.stylesheets\` to \`true\`."
read -n 1 -s -r -p "Press any key to open Firefox to about:config"
firefox about:config

echo
echo
echo "Restart Firefox and you're done."
