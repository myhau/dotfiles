#!/bin/bash


export PATH="/home/mihau/.gvm/bin:/home/mihau/.npm-packages/bin:/home/mihau/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/java-8-openjdk-i386/bin:/usr/lib/jvm/java-8-openjdk-i386/jre/bin:/usr/share/scala-2.11.4/bin:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:/home/mihau/bin:/home/mihau/bin/git:/home/mihau/.gopath/bin:/usr/bin/core_perl":$PATH

export TERMINAL=urxvt

if [ "$DESKTOP_SESSION" = "i3" ]; then
  export $(gnome-keyring-daemon -s) 
fi
