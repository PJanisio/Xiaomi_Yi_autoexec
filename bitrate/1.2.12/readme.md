## How to create autoexec script for bitrate change - firmware 1.2.12?

1. Take resolution address value you want to change from [this file](https://github.com/PJanisio/Xiaomi_Yi_autoexec.ash/blob/master/bitrate/1.2.12/resolution_addresses.md)
2. Take bitrate address value from [this file](https://github.com/PJanisio/Xiaomi_Yi_autoexec.ash/blob/master/bitrate/1.2.12/bitrate_addresses.md)
3. create "autoexec.ash" script and put inside:

```shell
writew "resolution address"  "bitrate address"
```

Example:
You want change **2560x1440 30fps** to **35 mbps** bitrate, here is the code:

```shell
writew C05C1E52 0x420C
