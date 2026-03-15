#!/bin/bash

APP_SECRET=$(openssl rand -hex 32)
IV=$(openssl rand -hex 16)

echo "APP_SECRET: $APP_SECRET"
echo "IV: $IV"

openssl enc -aes-256-cbc -K $APP_SECRET -iv $IV -base64 -in script.sh -out script.enc.sh