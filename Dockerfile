FROM PAVI4566:kali/v1
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install \
    python3 python3-dev python3-dev python3-pip python3-venv novnc x11vnc

RUN x11vnc -display :0 -autoport -localhost -nopw -bg -xkb -ncache -ncache_cr -quiet -forever

ENTRYPOINT /usr/share/novnc/utils/novnc_proxy --listen 8081 --vnc localhost:5900
