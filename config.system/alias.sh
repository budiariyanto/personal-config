cmus-wlan=cmus --listen $(ip -4 -h addr show wlp3s0 | grep inet | cut -d/  -f1 | awk '{print $2}')

