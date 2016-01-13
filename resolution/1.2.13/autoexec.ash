#RESOLUTION BITS
#author: funneld

#VIDEO MODE 0x00
#2560x1440 30P 16:9
#
#default resolution
writel 0xC05C2C8C 0x05A00A00
#default bitrate
writew 0xC05C1E52 0x4190


#VIDEO MODE 0x01
#2560x1080 30P 21:9
#
#default resolution
writel 0xC05C2CA0 0x04380A00
#default bitrate
writew 0xC05C1E82 0x4190


#VIDEO MODE 0x02
#2304x1296 30P 16:9
#
#default resolution
writel 0xC05C2CB4 0x05100900
#default bitrate
writew 0xC05C1EB2 0x4170


#VIDEO MODE 0x03
#1920x1080 60P 16:9
#
#default resolution
writel 0xC05C2CC8 0x04380780
#default bitrate
writew 0xC05C1EE2 0x41C8


#VIDEO MODE 0x04
#1920x1080 45P 16:9
#
#default resolution
writel 0xC05C2CDC 0x04380780
#default bitrate
writew 0xC05C1F12 0x4140


#VIDEO MODE 0x05
#1920x1080 40P 16:9
#
#default resolution
writel 0xC05C2CF0 0x04380780
#default bitrate
writew 0xC05C1F42 0x4140


#VIDEO MODE 0x06
#1920x1080 30P 16:9
#
#default resolution
writel 0xC05C2D04 0x04380780
#default bitrate
writew 0xC05C1F72 0x4140


#VIDEO MODE 0x07
#HDR 1920x1080 30P 16:9
#
#default resolution
writel 0xC05C2D18 0x04380780
#default bitrate
writew 0xC05C1FA2 0x4140


#VIDEO MODE 0x08
#1920x1080 60I 16:9
#
#default resolution
writel 0xC05C2D2C 0x04380780
#default bitrate
writew 0xC05C1FD2 0x4170


#VIDEO MODE 0x09
#1440x1080 60P 16:9
#
#default resolution
writel 0xC05C2D40 0x043805A0
#default bitrate
writew 0xC05C2002 0x4170


#VIDEO MODE 0x0A
#1440x1080 30P 16:9
#
#default resolution
writel 0xC05C2D54 0x043805A0
#default bitrate
writew 0xC05C2032 0x4140


#VIDEO MODE 0x0B
#1440x1080 60I 16:9
#
#default resolution
writel 0xC05C2D68 0x043805A0
#default bitrate
writew 0xC05C2062 0x4170


#VIDEO MODE 0x0C
#1600x1200 60P 4:3
#
#default resolution
writel 0xC05C2D7C 0x04B00640
#default bitrate
writew 0xC05C2092 0x4170


#VIDEO MODE 0x0D
#1600x1200 30P 4:3
#
#default resolution
writel 0xC05C2D90 0x04B00640
#default bitrate
writew 0xC05C20C2 0x4140


#VIDEO MODE 0x0E
#1600x900 30P 16:9
#
#default resolution
writel 0xC05C2DA4 0x03840640
#default bitrate
writew 0xC05C20F2 0x4140


#VIDEO MODE 0x0F
#1280x720 60P 16:9
#
#default resolution
writel 0xC05C2DB8 0x02D00500
#default bitrate
writew 0xC05C2122 0x4140


#VIDEO MODE 0x10
#HDR 1280x720 30P 16:9
#
#default resolution
writel 0xC05C2DCC 0x02D00500
#default bitrate
writew 0xC05C2152 0x4100


#VIDEO MODE 0x11
#1280x720 30P 16:9
#
#default resolution
writel 0xC05C2DE0 0x02D00500
#default bitrate
writew 0xC05C2182 0x4100


#VIDEO MODE 0x12
#848x480 60P 16:9
#
#default resolution
writel 0xC05C2DF4 0x01E00350
#default bitrate
writew 0xC05C21B2 0x4100


#VIDEO MODE 0x13
#848x480 30P 16:9
#
#default resolution
writel 0xC05C2E08 0x01E00350
#default bitrate
writew 0xC05C21E2 0x40A0


#VIDEO MODE 0x14
#720x480 60P 16:9
#
#default resolution
writel 0xC05C2E1C 0x01E002D0
#default bitrate
writew 0xC05C2212 0x4100


#VIDEO MODE 0x15
#720x480 30P 4:3
#
#default resolution
writel 0xC05C2E30 0x01E002D0
#default bitrate
writew 0xC05C2242 0x4080


#VIDEO MODE 0x16
#1280x960 60P 4:3
#
#default resolution
writel 0xC05C2E44 0x03C00500
#default bitrate
writew 0xC05C2272 0x4170


#VIDEO MODE 0x17
#1280x960 30P 4:3
#
#default resolution
writel 0xC05C2E58 0x03C00500
#default bitrate
writew 0xC05C22A2 0x4148


#VIDEO MODE 0x18
#960x540 30P 16:9
#
#default resolution
writel 0xC05C2E6C 0x021C03C0
#default bitrate
writew 0xC05C22D2 0x4148


#VIDEO MODE 0x19
#720x400 30P 16:9
#
#default resolution
writel 0xC05C2E80 0x019002D0
#default bitrate
writew 0xC05C2302 0x3F19


#VIDEO MODE 0x1A
#640x360 30P 16:9
#
#default resolution
writel 0xC05C2E94 0x01680280
#default bitrate
writew 0xC05C2332 0x3F19


#VIDEO MODE 0x1B
#640x480 60P 4:3
#
#default resolution
writel 0xC05C2EA8 0x01E00280
#default bitrate
writew 0xC05C2362 0x4100


#VIDEO MODE 0x1C
#640x480 30P 4:3
#
#default resolution
writel 0xC05C2EBC 0x01E00280
#default bitrate
writew 0xC05C2392 0x3F00


#VIDEO MODE 0x1D
#432x240 30P 16:9
#
#default resolution
writel 0xC05C2ED0 0x00F001B0
#default bitrate
writew 0xC05C23C2 0x3F33


#VIDEO MODE 0x1E
#320x240 30P 4:3
#
#default resolution
writel 0xC05C2EE4 0x00F00140
#default bitrate
writew 0xC05C23F2 0x3F33


#VIDEO MODE 0x1F
#352x240 30P 4:3
#
#default resolution
writel 0xC05C2EF8 0x00F00160
#default bitrate
writew 0xC05C2422 0x3F33


#VIDEO MODE 0x20
#1920x1080 48P 16:9
#
#default resolution
writel 0xC05C2F0C 0x04380780
#default bitrate
writew 0xC05C2452 0x4170


#VIDEO MODE 0x21
#1920x1080 24P 16:9
#
#default resolution
writel 0xC05C2F20 0x04380780
#default bitrate
writew 0xC05C2482 0x4120


#VIDEO MODE 0x22
#1920x1080 15P 16:9
#
#default resolution
writel 0xC05C2F34 0x04380780
#default bitrate
writew 0xC05C24B2 0x4140


#VIDEO MODE 0x23
#1600x1200 48P 4:3
#
#default resolution
writel 0xC05C2F48 0x04B00640
#default bitrate
writew 0xC05C24E2 0x4170


#VIDEO MODE 0x24
#1600x1200 24P 4:3
#
#default resolution
writel 0xC05C2F5C 0x04B00640
#default bitrate
writew 0xC05C2512 0x4120


#VIDEO MODE 0x25
#1280x960 48P 4:3
#
#default resolution
writel 0xC05C2F70 0x03C00500
#default bitrate
writew 0xC05C2542 0x4170


#VIDEO MODE 0x26
#1280x960 24P 4:3
#
#default resolution
writel 0xC05C2F84 0x03C00500
#default bitrate
writew 0xC05C2572 0x4148


#VIDEO MODE 0x27
#1280x720 48P 16:9
#
#default resolution
writel 0xC05C2F98 0x02D00500
#default bitrate
writew 0xC05C25A2 0x4170


#VIDEO MODE 0x28
#1280x720 24P 16:9
#
#default resolution
writel 0xC05C2FAC 0x02D00500
#default bitrate
writew 0xC05C25D2 0x4120


#VIDEO MODE 0x29
#848x480 48P 16:9
#
#default resolution
writel 0xC05C2FC0 0x01E00350
#default bitrate
writew 0xC05C2602 0x4140


#VIDEO MODE 0x2A
#848x480 24P 16:9
#
#default resolution
writel 0xC05C2FD4 0x01E00350
#default bitrate
writew 0xC05C2632 0x4120


#VIDEO MODE 0x2B
#640x480 48P 4:3
#
#default resolution
writel 0xC05C2FE8 0x01E00280
#default bitrate
writew 0xC05C2662 0x4140


#VIDEO MODE 0x2C
#640x480 24P 4:3
#
#default resolution
writel 0xC05C2FFC 0x01E00280
#default bitrate
writew 0xC05C2692 0x4120


#VIDEO MODE 0x2D
#Precise
#
#default resolution
writel 0xC05C3010 0x00F00160
#default bitrate
writew 0xC05C26C2 0x3F33


#VIDEO MODE 0x2E
#Burst Cont
#
#default resolution
writel 0xC05C3024 0x00F00160
#default bitrate
writew 0xC05C26F2 0x3F33


#VIDEO MODE 0x2F
#Burst
#
#default resolution
writel 0xC05C3038 0x00F00160
#default bitrate
writew 0xC05C2722 0x3F33


#VIDEO MODE 0x30
#Precise Cont
#
#default resolution
writel 0xC05C304C 0x00F00160
#default bitrate
writew 0xC05C2752 0x3F33


#VIDEO MODE 0x31
#432x240 120P 16:9
#
#default resolution
writel 0xC05C3060 0x00F001B0
#default bitrate
writew 0xC05C2782 0x4080


#VIDEO MODE 0x32
#432x240 240P 16:9
#
#default resolution
writel 0xC05C3074 0x00F001B0
#default bitrate
writew 0xC05C27B2 0x40C0


#VIDEO MODE 0x33
#320x240 120P 4:3
#
#default resolution
writel 0xC05C3088 0x00F00140
#default bitrate
writew 0xC05C27E2 0x4080


#VIDEO MODE 0x34
#1280x720 120P 16:9
#
#default resolution
writel 0xC05C309C 0x02D00500
#default bitrate
writew 0xC05C2812 0x4190


#VIDEO MODE 0x35
#640x480 120P 4:3
#
#default resolution
writel 0xC05C30B0 0x01E00280
#default bitrate
writew 0xC05C2842 0x4190


#VIDEO MODE 0x36
#640x480 240P 4:3
#
#default resolution
writel 0xC05C30C4 0x01E00280
#default bitrate
writew 0xC05C2872 0x4190


#VIDEO MODE 0x37
#848x480 240P 16:9
#
#default resolution
writel 0xC05C30D8 0x01E00350
#default bitrate
writew 0xC05C28A2 0x4140


#VIDEO MODE 0x38
#848x480 120P 16:9
#
#default resolution
writel 0xC05C30EC 0x01E00350
#default bitrate
writew 0xC05C28D2 0x4140


#VIDEO MODE 0x39
#2560x1440 25P 16:9
#
#default resolution
writel 0xC05C3100 0x05A00A00
#default bitrate
writew 0xC05C2902 0x4190


#VIDEO MODE 0x3A
#2560x1080 25P 21:9
#
#default resolution
writel 0xC05C3114 0x04380A00
#default bitrate
writew 0xC05C2932 0x4190


#VIDEO MODE 0x3B
#2304x1296 25P 16:9
#
#default resolution
writel 0xC05C3128 0x05100900
#default bitrate
writew 0xC05C2962 0x4170


#VIDEO MODE 0x3C
#1920x1080 50P 16:9
#
#default resolution
writel 0xC05C313C 0x04380780
#default bitrate
writew 0xC05C2992 0x41C8


#VIDEO MODE 0x3D
#1920x1080 45P 16:9
#
#default resolution
writel 0xC05C3150 0x04380780
#default bitrate
writew 0xC05C29C2 0x4140


#VIDEO MODE 0x3E
#1920x1080 40P 16:9
#
#default resolution
writel 0xC05C3164 0x04380780
#default bitrate
writew 0xC05C29F2 0x4140


#VIDEO MODE 0x3F
#1920x1080 25P 16:9
#
#default resolution
writel 0xC05C3178 0x04380780
#default bitrate
writew 0xC05C2A22 0x4140


#VIDEO MODE 0x40
#HDR 1920x1080 25P 16:9
#
#default resolution
writel 0xC05C318C 0x04380780
#default bitrate
writew 0xC05C2A52 0x4140


#VIDEO MODE 0x41
#1920x1080 50I 16:9
#
#default resolution
writel 0xC05C31A0 0x04380780
#default bitrate
writew 0xC05C2A82 0x4170


#VIDEO MODE 0x42
#1440x1080 50P 16:9
#
#default resolution
writel 0xC05C31B4 0x043805A0
#default bitrate
writew 0xC05C2AB2 0x4170


#VIDEO MODE 0x43
#1440x1080 25P 16:9
#
#default resolution
writel 0xC05C31C8 0x043805A0
#default bitrate
writew 0xC05C2AE2 0x4140


#VIDEO MODE 0x44
#1440x1080 50I 16:9
#
#default resolution
writel 0xC05C31DC 0x043805A0
#default bitrate
writew 0xC05C2B12 0x4170


#VIDEO MODE 0x45
#1600x1200 50P 4:3
#
#default resolution
writel 0xC05C31F0 0x04B00640
#default bitrate
writew 0xC05C2B42 0x4170


#VIDEO MODE 0x46
#1600x1200 25P 4:3
#
#default resolution
writel 0xC05C3204 0x04B00640
#default bitrate
writew 0xC05C2B72 0x4140


#VIDEO MODE 0x47
#1600x900 25P 16:9
#
#default resolution
writel 0xC05C3218 0x03840640
#default bitrate
writew 0xC05C2BA2 0x4140


#VIDEO MODE 0x48
#1280x720 50P 16:9
#
#default resolution
writel 0xC05C322C 0x02D00500
#default bitrate
writew 0xC05C2BD2 0x4140


#VIDEO MODE 0x49
#HDR 1280x720 25P 16:9
#
#default resolution
writel 0xC05C3240 0x02D00500
#default bitrate
writew 0xC05C2C02 0x4100


#VIDEO MODE 0x4A
#1280x720 25P 16:9
#
#default resolution
writel 0xC05C3254 0x02D00500
#default bitrate
writew 0xC05C2C32 0x4100


#VIDEO MODE 0x4B
#848x480 50P 16:9
#
#default resolution
writel 0xC05C3268 0x01E00350
#default bitrate
writew 0xC05C2C62 0x4100


#VIDEO MODE 0x4C
#848x480 25P 16:9
#
#default resolution
writel 0xC05C327C 0x01E00350
#default bitrate
writew 0xC05C2C92 0x40A0


#VIDEO MODE 0x4D
#720x480 50P 16:9
#
#default resolution
writel 0xC05C3290 0x024002D0
#default bitrate
writew 0xC05C2CC2 0x4100


#VIDEO MODE 0x4E
#720x480 25P 4:3
#
#default resolution
writel 0xC05C32A4 0x024002D0
#default bitrate
writew 0xC05C2CF2 0x4080


#VIDEO MODE 0x4F
#1280x960 50P 4:3
#
#default resolution
writel 0xC05C32B8 0x03C00500
#default bitrate
writew 0xC05C2D22 0x4170


#VIDEO MODE 0x50
#1280x960 25P 4:3
#
#default resolution
writel 0xC05C32CC 0x03C00500
#default bitrate
writew 0xC05C2D52 0x4148


#VIDEO MODE 0x51
#960x540 25P 16:9
#
#default resolution
writel 0xC05C32E0 0x021C03C0
#default bitrate
writew 0xC05C2D82 0x4148


#VIDEO MODE 0x52
#720x400 25P 16:9
#
#default resolution
writel 0xC05C32F4 0x019002D0
#default bitrate
writew 0xC05C2DB2 0x3F19


#VIDEO MODE 0x53
#640x360 25P 16:9
#
#default resolution
writel 0xC05C3308 0x01680280
#default bitrate
writew 0xC05C2DE2 0x3F19


#VIDEO MODE 0x54
#640x480 50P 4:3
#
#default resolution
writel 0xC05C331C 0x01E00280
#default bitrate
writew 0xC05C2E12 0x4100


#VIDEO MODE 0x55
#640x480 25P 4:3
#
#default resolution
writel 0xC05C3330 0x01E00280
#default bitrate
writew 0xC05C2E42 0x3F00


#VIDEO MODE 0x56
#432x240 25P 16:9
#
#default resolution
writel 0xC05C3344 0x00F001B0
#default bitrate
writew 0xC05C2E72 0x3F33


#VIDEO MODE 0x57
#320x240 25P 4:3
#
#default resolution
writel 0xC05C3358 0x00F00140
#default bitrate
writew 0xC05C2EA2 0x3F33


#VIDEO MODE 0x58
#352x240 25P 4:3
#
#default resolution
writel 0xC05C336C 0x01200160
#default bitrate
writew 0xC05C2ED2 0x3F33


#VIDEO MODE 0x59
#1920x1080 48P 16:9
#
#default resolution
writel 0xC05C3380 0x04380780
#default bitrate
writew 0xC05C2F02 0x4170


#VIDEO MODE 0x5A
#1920x1080 24P 16:9
#
#default resolution
writel 0xC05C3394 0x04380780
#default bitrate
writew 0xC05C2F32 0x4120


#VIDEO MODE 0x5B
#1920x1080 15P 16:9
#
#default resolution
writel 0xC05C33A8 0x04380780
#default bitrate
writew 0xC05C2F62 0x4140


#VIDEO MODE 0x5C
#1600x1200 48P 4:3
#
#default resolution
writel 0xC05C33BC 0x04B00640
#default bitrate
writew 0xC05C2F92 0x4170


#VIDEO MODE 0x5D
#1600x1200 24P 4:3
#
#default resolution
writel 0xC05C33D0 0x04B00640
#default bitrate
writew 0xC05C2FC2 0x4120


#VIDEO MODE 0x5E
#1280x960 48P 4:3
#
#default resolution
writel 0xC05C33E4 0x03C00500
#default bitrate
writew 0xC05C2FF2 0x4170


#VIDEO MODE 0x5F
#1280x960 24P 4:3
#
#default resolution
writel 0xC05C33F8 0x03C00500
#default bitrate
writew 0xC05C3022 0x4148


#VIDEO MODE 0x60
#1280x720 48P 16:9
#
#default resolution
writel 0xC05C340C 0x02D00500
#default bitrate
writew 0xC05C3052 0x4170


#VIDEO MODE 0x61
#1280x720 24P 16:9
#
#default resolution
writel 0xC05C3420 0x02D00500
#default bitrate
writew 0xC05C3082 0x4120


#VIDEO MODE 0x62
#848x480 48P 16:9
#
#default resolution
writel 0xC05C3434 0x01E00350
#default bitrate
writew 0xC05C30B2 0x4140


#VIDEO MODE 0x63
#848x480 24P 16:9
#
#default resolution
writel 0xC05C3448 0x01E00350
#default bitrate
writew 0xC05C30E2 0x4120


#VIDEO MODE 0x64
#640x480 48P 4:3
#
#default resolution
writel 0xC05C345C 0x01E00280
#default bitrate
writew 0xC05C3112 0x4140


#VIDEO MODE 0x65
#640x480 24P 4:3
#
#default resolution
writel 0xC05C3470 0x01E00280
#default bitrate
writew 0xC05C3142 0x4120


#VIDEO MODE 0x66
#Precise
#
#default resolution
writel 0xC05C3484 0x01200160
#default bitrate
writew 0xC05C3172 0x3F33


#VIDEO MODE 0x67
#Burst Cont
#
#default resolution
writel 0xC05C3498 0x01200160
#default bitrate
writew 0xC05C31A2 0x3F33


#VIDEO MODE 0x68
#Burst
#
#default resolution
writel 0xC05C34AC 0x01200160
#default bitrate
writew 0xC05C31D2 0x3F33


#VIDEO MODE 0x69
#Precise Cont
#
#default resolution
writel 0xC05C34C0 0x01200160
#default bitrate
writew 0xC05C3202 0x3F33


#VIDEO MODE 0x6A
#432x240 100P 16:9
#
#default resolution
writel 0xC05C34D4 0x00F001B0
#default bitrate
writew 0xC05C3232 0x4080


#VIDEO MODE 0x6B
#432x240 200P 16:9
#
#default resolution
writel 0xC05C34E8 0x00F001B0
#default bitrate
writew 0xC05C3262 0x40C0


#VIDEO MODE 0x6C
#320x240 100P 16:9
#
#default resolution
writel 0xC05C34FC 0x00F00140
#default bitrate
writew 0xC05C3292 0x4080


#VIDEO MODE 0x6D
#1280x720 100P 16:9
#
#default resolution
writel 0xC05C3510 0x02D00500
#default bitrate
writew 0xC05C32C2 0x4190


#VIDEO MODE 0x6E
#640x480 100P 4:3
#
#default resolution
writel 0xC05C3524 0x01E00280
#default bitrate
writew 0xC05C32F2 0x4190


#VIDEO MODE 0x6F
#640x480 200P 4:3
#
#default resolution
writel 0xC05C3538 0x01E00280
#default bitrate
writew 0xC05C3322 0x4190


#VIDEO MODE 0x70
#848x480 200P 16:9
#
#default resolution
writel 0xC05C354C 0x01E00350
#default bitrate
writew 0xC05C3352 0x4140


#VIDEO MODE 0x71
#848x480 100P 16:9
#
#default resolution
writel 0xC05C3560 0x01E00350
#default bitrate
writew 0xC05C3382 0x4140

