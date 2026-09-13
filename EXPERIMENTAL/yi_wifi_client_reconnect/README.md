# Wi-Fi client reconnect experiment

This is an experimental response to the long-standing Wi-Fi client reconnect
request. It does not unload or reload the Wi-Fi kernel module. Instead it asks
the existing supplicant to reconfigure and retries DHCP a few times.

Copy `autoexec.ash` and the included `wifi` directory to the SD-card root.
The script may delay boot while it retries. It assumes the same WPA2 setup and
interface names as `wifi_client_mode`. It is not a background watchdog and
cannot guarantee recovery from a driver crash.

Remove `autoexec.ash` after testing and check whether the camera remains
reachable after the access point is interrupted and restored.
