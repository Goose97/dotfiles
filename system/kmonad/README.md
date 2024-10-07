Install kmonad on MacOS is quite complicated. You have to do several steps, and each one is prone to error:
- Install dext (driver extension). This is the driver to monitor keyboard input
and emit events. It's actually a package maintained by Karabiner-Elements.
- The dext will require active and user approval. You can find the request in the Login & Extension, under Driver Extension section.
- Build kmomad binary from source. This will require stack (Haskell build tool).
- Add kmonad to auto startup daemon.

Remember, kmonad must be run as root.

Useful link: https://tgc54.com/en/post/kmonad-macos/
