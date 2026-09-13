# EXPERIMENTAL - Xiaomi Yi firmware 1.2.13 only.
# Derived from the existing 1.2.13 resolution and bitrate tables.
# 1920x1080 30P, high bitrate value used by the repository's 35 Mbps entries.
writel 0xC05C2D04 0x04380780
writew 0xC05C1F72 0x420C
