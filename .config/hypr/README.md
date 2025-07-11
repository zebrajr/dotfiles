
# hyprland config


## Files

`hyprland.conf` is the main Hyprland configuration file
- It will load files from `conf.d`
- Loading is named, can be changed to load all (eg: /*)

`hyprlock.conf` configures the lock screen

## Dependencies
### If using NVidia GPU
Make sure `drm modeset` is set.

Can be checked with
- `sudo cat /sys/module/nvidia_drm/parameters/modeset` should return `Y`

Else can be activated with:
- `sudo grubby --update-kernel=ALL --args='nvidia-drm.modeset=1'`

### Hard Dependencies
Needed, else nothing might work
- `hyprland` - the Window Manager
- `ghostty` - the Terminal Emulator - else change to other on `./hyprland.conf`
- `dunst` - Notification Daemon

### Soft Dependencies
Recommended, but can be replaced by others
- `hyprlock` - Screen Lock
- `hypridle` - Idle detector
- `rofi` - Application launcher
- `hyprpolkitagent` - Privilege Elevation 
- `waybar`- Top Bar a.k.a dock

### Recommended
- `nm-applet` - Network Manager Applet
- `wdisplays` - GUI to configure displays
