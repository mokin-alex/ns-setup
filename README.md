# ns-setup
Установка Nightscout на VPS AlmaLinux 9

Рекомендованные предварительные действия:
install-packeges.sh - установка необходимого, а так же DockerCE.

## Prerequisites
1. Вы уже зарегистрировали VPS на jino.ru.
2. Вы уже зарегистрировали домен и привязали его к этой VPS.

## Process
1. Зайт в консоль своей VPS
2. Вставить строку: `bash <(wget -qO- https://raw.githubusercontent.com/mokin-alex/ns-setup/ns-alma/install-packeges.sh)`
   При запросах - отвечать: yes
3. Вставить строку: `bash <(wget -qO- https://raw.githubusercontent.com/mokin-alex/ns-setup/ns-alma/ns-setup.sh)` 
   Нажать enter и следовать инструкциям
4. Рекомендую перенаправить внешние порты (дополняется...) 