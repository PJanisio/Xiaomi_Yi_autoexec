# 1080p15 mode-table experiment

**Target:** Xiaomi Yi firmware 1.2.13.

The extracted 1.2.13 resolution table contains a 1920x1080 15P entry at video
mode `0x22`. This script writes that mode's resolution and documented default
bitrate. It does not force the camera's current UI mode; select the matching
video mode in the camera/app after boot if the firmware exposes it.

This is the relevant experiment for the 15 FPS report. The address is copied
from the repository's existing 1.2.13 table, but has not been tested here.
