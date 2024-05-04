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

# Run the Fix

Getting the fix on your machine is easy. Running the following command to get the script to execute and place the `steam_dev.cfg` file in the correct location.

```bash
git clone https://github.com/blakeridgway/linux_steam_download_fix.git
cd linux_steam_download_fix
./steam_download_speed_fix.sh
```

**Disclaimer: The select Yes/No is a selection using 1 for yes & 2 for no.** 

*This is being fixed in another iteration. Feel free to open a Pull Request if you see any thing that can be optimized.*

# Visual Proof
_Before the `steam_dev.cfg` file is in place_
![BeforeSteamDevFix](screenshots/before.png)

_After the `steam_dev.cfg` file is in place_
![AfterSteamDevFix](screenshots/after.png)

# Sources for Fix

[Arch Wiki - Disable HTTP2](https://wiki.archlinux.org/title/steam#Disable_HTTP2_for_faster_downloads)  
[Gentoo Wiki - Slow download](https://wiki.gentoo.org/wiki/Steam/Client_troubleshooting#Slow_download_or_limited)