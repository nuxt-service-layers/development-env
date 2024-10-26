#!/bin/bash

echo ""
echo ""
echo -e "\e[32m[Service Layers] Installing dependencies and spinning up a dev server... \e[0m"

cd /app/user
pnpm i
nuxt prepare

cd /app/firebase 
pnpm i
nuxt prepare

cd /app/mongo
pnpm i
nuxt prepare

cd /app/sqlite
pnpm i
nuxt prepare

cd /app/postgres
pnpm i
nuxt prepare

cd /app/base
pnpm i
nuxt prepare

cd /app/database
pnpm i
nuxt prepare

cd app-template
pnpm i

echo ""
echo ""
echo -e "\e[32m[Service Layers] Starting development server... \e[0m"
nuxt dev


