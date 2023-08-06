#!/bin/bash

# Make users and group
sudo groupadd mediacenter -g 13000

sudo useradd sonarr -u 13001
sudo useradd radarr -u 13002
sudo useradd lidarr -u 13003
sudo useradd readarr -u 13004
sudo useradd mylar -u 13005
sudo useradd prowlarr -u 13006
sudo useradd qbittorrent -u 13007
sudo useradd jackett -u 13008
sudo useradd overseerr -u 13009
sudo useradd audiobookshelf -u 13010
sudo useradd ombi -u 13011

sudo usermod -a -G mediacenter sonarr
sudo usermod -a -G mediacenter radarr
sudo usermod -a -G mediacenter lidarr
sudo usermod -a -G mediacenter readarr
sudo usermod -a -G mediacenter mylar
sudo usermod -a -G mediacenter prowlarr
sudo usermod -a -G mediacenter qbittorrent
sudo usermod -a -G mediacenter jackett
sudo usermod -a -G mediacenter overseerr
sudo usermod -a -G mediacenter audiobookshelf
sudo usermod -a -G mediacenter ombi

# Make directories
sudo mkdir -pv config/{sonarr,radarr,lidarr,readarr,mylar,prowlarr,qbittorrent,jackett,audiobookshelf,overseerr,jackett,jellyseer,ombi}-config
sudo mkdir -pv data/{torrents,media}/{tv,movies,music,books,comics,audiobooks,podcasts,audiobookshelf-metadata}

# Set permissions
sudo chmod -R 775 data/
sudo chown -R $(id -u):mediacenter data/
sudo chown -R sonarr:mediacenter config/sonarr-config
sudo chown -R radarr:mediacenter config/radarr-config
sudo chown -R lidarr:mediacenter config/lidarr-config
sudo chown -R readarr:mediacenter config/readarr-config
sudo chown -R mylar:mediacenter config/mylar-config
sudo chown -R prowlarr:mediacenter config/prowlarr-config
sudo chown -R qbittorrent:mediacenter config/qbittorrent-config
sudo chown -R jackett:mediacenter config/jackett-config
sudo chown -R overseerr:mediacenter config/overseerr-config
sudo chown -R overseerr:mediacenter config/jellyseer-config
sudo chown -R ombi:mediacenter config/ombi-config

echo "UID=$(id -u)" >> .env
