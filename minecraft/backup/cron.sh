#!/bin/sh

DATE=$(date +%Y-%m-%d-%H-%M-%S)

mkdir -p /mnt/storage1/backup/minecraft/${DATE}
cp -R /app/world* /mnt/storage1/backup/minecraft/${DATE}
mkdir -p /mnt/storage2/backup/minecraft/${DATE}
cp -R /app/world* /mnt/storage2/backup/minecraft/${DATE}