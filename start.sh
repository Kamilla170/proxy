#!/bin/sh
# Логин/пароль берём из переменных окружения Railway (PROXY_USER, PROXY_PASS)
# $PORT Railway подставляет автоматически.
# auto:// отдаёт HTTP и SOCKS5 на одном порту с общим логином/паролем
# порт фиксированный 8080 — его же указать в TCP Proxy на Railway
exec gost -L "auto://${PROXY_USER}:${PROXY_PASS}@:8080"
