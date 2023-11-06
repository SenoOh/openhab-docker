FROM openhab/openhab:4.0.3

RUN ln -sf /openhab/addons /usr/share/openhab/addons
RUN apt-get update && apt-get install -y ffmpeg
