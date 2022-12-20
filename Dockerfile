FROM openhab/openhab:3.3.0

RUN apt-get update && apt-get install -y ffmpeg
