# Beep volume experiment

**Target:** Xiaomi Yi firmware 1.2.13.

The extracted firmware documents `t audio beep [beep_type] [volume_step]` and
volume steps from `0` to `64`. This tests a maximum beep volume for beep type
`0`; the type-to-sound mapping is not known. It does **not** change microphone
gain or recorded-video audio volume.

If the command is unsupported or the camera behaves unexpectedly, power it off
only when safe and remove the script before the next boot.
