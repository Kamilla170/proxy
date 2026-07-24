#!/bin/sh
# Логин/пароль берём из переменных окружения Railway (PROXY_USER, PROXY_PASS)
# $PORT Railway подставляет автоматически.
# http:// — обычный HTTP-прокси для браузера
# порт 1705 — совпадает с target-портом TCP Proxy на Railway (:1705)
exec gost -L "http://${PROXY_USER}:${PROXY_PASS}@:1705"
