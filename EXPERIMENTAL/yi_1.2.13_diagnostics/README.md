# Read-only firmware diagnostics

**Target:** Xiaomi Yi firmware 1.2.13.

This uses commands whose usage text is present in the extracted firmware
strings. It is intended to reveal the active application and DSP/video
objects, not to change camera configuration. Output depends on the firmware's
shell and may be printed over telnet/serial rather than saved to the SD card.

The commands are still unverified on hardware.
