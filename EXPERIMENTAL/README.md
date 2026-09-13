# Experimental firmware-derived scripts

This directory contains deliberately risky experiments derived from strings and
tables extracted from Xiaomi Yi firmware 1.2.13. They are not official
features, are not verified on real hardware, and may do nothing, hang the
camera, corrupt files, or require a firmware recovery.

Use a spare FAT32 card and keep a known-good card with the original setup.
Confirm the camera model/revision and firmware before using any script. Copy
only one experiment at a time as `autoexec.ash` to the SD-card root, keep the
camera powered during boot, and remove the script after testing. Do not use
the scripts with another firmware version unless the addresses and commands
have been independently re-checked.

Every script records its evidence source and current confidence. `strings.txt`
proves only that text exists in a firmware image; it does not prove that the
command is callable, that its arguments are correct, or that a memory address
has the same meaning on another revision.

## Experiments

| Directory | Purpose | Evidence |
| --- | --- | --- |
| `yi_1.2.13_1080p30_high_bitrate` | Reapply the known 1080p30 mode table with a high bitrate | Existing 1.2.13 resolution/bitrate tables |
| `yi_1.2.13_15fps_mode` | Register the extracted 1920x1080 15P mode table | Existing 1.2.13 resolution table |
| `yi_1.2.13_diagnostics` | Collect read-only app/DSP diagnostics | Extracted `t app curapp` and `t dspinfo` usage |
| `yi_1.2.13_beep_volume` | Test the maximum firmware beep volume step | Extracted `t audio beep ... volume_step: 0~64` |
| `yi_wifi_client_reconnect` | Retry Wi-Fi association and DHCP without unloading the driver | Existing station script plus extracted Wi-Fi command strings |

The beep experiment is about the camera's confirmation beep, not microphone
or video-recording volume. The diagnostics experiment does not change HDMI
output; it only collects output-related information that can guide a later
hardware test.
