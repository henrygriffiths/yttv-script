#!/bin/bash

sleep 3

sed -i 's/"exited_cleanly": false/"exited_cleanly": true/' ~/.config/chromium/Default/Preferences
sed -i 's/"exit_type": "Crashed"/"exit_type": "None"/' ~/.config/chromium/Default/Preferences

unclutter -idle 3 >/dev/null 2>&1 &

sleep 5; chromium --autoplay-policy=no-user-gesture-required --enable-extensions --user-agent="Mozilla/5.0 (X11; Linux i686) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/90.0.4430.212 Large Screen Safari/534.24 GoogleTV/092754youtube.com/tv#" --window-size=1920,1080 --app="https://www.youtube.com/tv"  >/dev/null 2>&1 &
