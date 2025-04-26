#!/bin/bash

# Cores para o terminal
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RESET='\033[0m'

echo -e "${GREEN}Starting Cam Sniper...${RESET}"

# Iniciar o servidor Flask com Ngrok
python3 cam_sniper.py
