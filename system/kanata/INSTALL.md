- Install the EXACT version 1.7.0. Newer versions don't work with newer MacOS
- Copy the `launch_daemon.xml` to `/Library/LaunchDaemons/local.kanata.plist`
- Make sure kanata has granted `Input Monitoring` permission
- Launch kanata daemon with `launchctl load /Library/LaunchDaemons/local.kanata.plist`
