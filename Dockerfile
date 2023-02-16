FROM pavi4566/kali:v2

entrypoint /usr/share/novnc/utils/novnc_proxy --listen 8081 --vnc localhost:5900
