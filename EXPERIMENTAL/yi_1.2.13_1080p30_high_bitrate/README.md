# 1080p30 high-bitrate experiment

**Target:** Xiaomi Yi firmware 1.2.13, matching the existing resolution table.

This writes the 1920x1080 30P resolution entry and selects the existing
`0x420C` bitrate value. It is not a 15 FPS patch and does not prove that the
mode selected by the camera will accept the bitrate.

Evidence:

- `resolution/1.2.13/autoexec.ash`
- `bitrate/1.2.13/readme.md`

Remove `autoexec.ash` from the card after the first test.
