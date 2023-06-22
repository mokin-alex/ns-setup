#!/bin/sh

echo Итак, немного настроек
echo

while [[ ! "$domain" =~ ^([a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?\.)+[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$ ]]; do
  echo "Введите имя домена, на котором ваш Nightscout будет доступен:"
  read domain
done
echo "NS_DOMAIN=$domain" >> .env
echo

secret=$(cat /proc/sys/kernel/random/uuid)
echo "NS_SECRET=$secret" >> .env

curl https://raw.githubusercontent.com/mokin-alex/ns-setup/ns-alma/docker-compose.yml --output docker-compose.yml

docker compose up -d

echo "Ваш секретный ключ для доступа к Nightscout (запишите!):"
echo "secret: $secret"
echo "domain: $domain"
