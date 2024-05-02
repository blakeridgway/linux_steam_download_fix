# Linux - Steam Download Speed Fix

<b>Steam Download Speed is so slow on Linux...Here's the fix</b>

Some systems and configurations seem to have issues with HTTP2. Disabling HTTP2 will probably yield faster downloads on those configurations. You can either use the console command `@nClientDownloadEnableHTTP2PlatformLinux 0` or set it in steam_dev.cfg

There is another one  which makes Steam connect to more servers (up to 10) which can improve download speeds.  
`@fDownloadRateImprovementToAddAnotherConnection 1.0`

You can then use the command `download_sources` to see various stats.  

For native installs of Steam where you have installed Steam through apt, dnf, pacman, etc... the file path will be as follows:

`~/.steam/steam/steam_dev.cfg`

For Flatpak installs of Steam the file path will be as follows:

`~/.var/app/com.valvesoftware.Steam/.steam/steam/steam_dev.cfg`

**I have added the `steam_dev.cfg` file in this repository that you can put in the file path.

# Sources for Fix

[Arch Wiki - Disable HTTP2](https://wiki.archlinux.org/title/steam#Disable_HTTP2_for_faster_downloads)  
[Gentoo Wiki - Slow download](https://wiki.gentoo.org/wiki/Steam/Client_troubleshooting#Slow_download_or_limited)