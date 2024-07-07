# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Set noninteractive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install necessary packages
RUN apt update  \
    && apt install -y --no-install-recommends \
        sudo \
        dialog \
        xdg-utils \
        gtk-update-icon-cache \
        libgl1-mesa-glx \
        libpulse0 \
        libnss3 \
        libxss1 \
        libasound2 \
        libxslt1.1 \
        libxkbcommon-x11-0 \
        libxcb-xinerama0-dev \
        libfreetype6 \
	qtwebengine5-dev \
	firefox \
	sqlite \
	sqlite3
	
# Set the GUI
RUN apt install -y --no-install-recommends xfce4 xfce4-goodies

# Copy the Cisco Packet Tracer deb file into the image
COPY CiscoPacketTracer822_amd64_signed.deb /root/

COPY packet-tracer /root/packet-tracer
RUN chmod +x /root/packet-tracer

# Set the entry point to start Packet Tracer
ENTRYPOINT ["./root/packet-tracer"]
