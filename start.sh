#!/bin/sh
# Логин/пароль берём из переменных окружения Railway (PROXY_USER, PROXY_PASS)
# $PORT Railway подставляет автоматически.
exec gost -L "socks5://${PROXY_USER}:${PROXY_PASS}@:${PORT}"
