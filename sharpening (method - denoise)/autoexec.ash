#denoising script
#author: funnel

#t ia2 -adj tidx [ev_idx][nf_idx][shutter_idx]", "-1 disable"
#looks like the values are between 0-16383 (0x0000-0x3FFF)
#If you want to set noise reduction value to 2048

t ia2 -adj tidx -1 2048 -1
