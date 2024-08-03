#!/bin/sh

DATE=$(date +%Y-%m-%d-%H-%M-%S)

discord_url="https://discord.com/api/webhooks/1269212346677723157/gOCRwxryLQ-tgqa3BfTnn42IwNMQwpta2t1-oUUCuf45gmPHtpEtgX9Z5R2KElSYYAcj"

send_discord_notification() {
  local message=$1
  
  # Construct payload
  local payload=$(cat <<EOF
{
  "content": "$message"
}
EOF
)

  # Send POST request to Discord Webhook
  curl -H "Content-Type: application/json" -X POST -d "$payload" $discord_url
}

mkdir -p /mnt/storage1/backup/minecraft/${DATE}
cp -R /app/world* /mnt/storage1/backup/minecraft/${DATE}

send_discord_notification "ワールドデータ (world, world_nether, world_the_end) のバックアップ: /mnt/storage1/backup/minecraft/${DATE} (プライマリストレージ) への保存が完了しました"

mkdir -p /mnt/storage2/backup/minecraft/${DATE}
cp -R /app/world* /mnt/storage2/backup/minecraft/${DATE}

send_discord_notification "ワールドデータ (world, world_nether, world_the_end) のバックアップ: /mnt/storage2/backup/minecraft/${DATE} (セカンダリストレージ) への保存が完了しました"