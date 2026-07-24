#!/bin/sh
# Логин/пароль берём из переменных окружения Railway (PROXY_USER, PROXY_PASS)
# $PORT Railway подставляет автоматически.
# auto:// отдаёт HTTP и SOCKS5 на одном порту с общим логином/паролем
# порт 1705 — совпадает с target-портом TCP Proxy на Railway (:1705)
exec gost -L "auto://${PROXY_USER}:${PROXY_PASS}@:1705"
