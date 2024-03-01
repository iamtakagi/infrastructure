#!/bin/sh

DATE=$(date +%Y-%m-%d-%H-%M-%S)

mkdir -p /mnt/storage1/backup/minecraft/${DATE}
chmod 777 -R /mnt/storage1/backup/minecraft/${DATE}
cp -r /app/world* /mnt/storage1/backup/minecraft/${DATE}
mkdir -p /mnt/storage2/backup/minecraft/${DATE}
chmod 777 -R /mnt/storage2/backup/minecraft/${DATE}
cp -r /app/world* /mnt/storage2/backup/minecraft/${DATE}