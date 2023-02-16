FROM pavi4566/kali:v3

entrypoint vncserver :0 -rfbport 5900 -geometry 1920x1080 -depth 16 && /usr/share/novnc/utils/novnc_proxy --listen 8081 --vnc localhost:5900
