#!/bin/bash

# Renk Tanımlamaları
PURPLE='\033[0;35m'
L_PURPLE='\033[1;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' 

clear

# Efsanevi Dev ASCII Logo
echo -e "${L_PURPLE}"
echo "NNNNNNNN        NNNNNNNN                    lllllll                     ZZZZZZZZZZZZZZZZZZZ                        "
echo "N:::::::N        N::::::N                    l:::::l                    Z:::::::::::::::::Z                        "
echo "N::::::::N       N::::::N                    l:::::l                    Z:::::::::::::::::Z                        "
echo "N:::::::::N      N::::::N                    l:::::l                    Z:::ZZZZZZZZ:::::Z                         "
echo "N::::::::::N     N::::::N  aaaaaaaaaaaaa     l::::l   aaaaaaaaaaaaa     ZZZZZ     Z:::::Zyyyyyyy           yyyyyyy "
echo "N:::::::::::N    N::::::N  a::::::::::::a    l::::l   a::::::::::::a            Z:::::Z  y:::::y         y:::::y  "
echo "N:::::::N::::N   N::::::N  aaaaaaaaa:::::a   l::::l   aaaaaaaaa:::::a          Z:::::Z    y:::::y       y:::::y   "
echo "N::::::N N::::N N::::::N            a::::a   l::::l            a::::a         Z:::::Z      y:::::y     y:::::y    "
echo "N::::::N  N::::N:::::::N     aaaaaaa:::::a   l::::l     aaaaaaa:::::a        Z:::::Z        y:::::y   y:::::y     "
echo "N::::::N   N:::::::::::N   aa::::::::::::a   l::::l   aa::::::::::::a       Z:::::Z          y:::::y y:::::y      "
echo "N::::::N    N::::::::::N  a::::aaaa::::::a   l::::l  a::::aaaa::::::a      Z:::::Z            y:::::y:::::y       "
echo "N::::::N     N:::::::::N a::::a    a:::::a   l::::l a::::a    a:::::a   ZZZ:::::Z     ZZZZZ    y:::::::::y        "
echo "N::::::N      N::::::::N a::::a    a:::::a  l::::::la::::a    a:::::a   Z::::::ZZZZZZZZ:::Z     y:::::::y         "
echo "N::::::N       N:::::::N a:::::aaaa::::::a  l::::::la:::::aaaa::::::a   Z:::::::::::::::::Z      y:::::y          "
echo "N::::::N        N::::::N  a::::::::::aa:::a l::::::l a::::::::::aa:::a  Z:::::::::::::::::Z     y:::::y           "
echo "NNNNNNNN         NNNNNNN   aaaaaaaaaa  aaaa llllllll  aaaaaaaaaa  aaaa  ZZZZZZZZZZZZZZZZZZZ    y:::::y            "
echo "                                                                                              y:::::y             "
echo "                                                                                             y:::::y              "
echo "                                                                                            y:::::y               "
echo "                                                                                           y:::::y                "
echo "                                                                                          yyyyyyy                 "
echo -e "${NC}"
echo -e "${BOLD}${PURPLE}   >> NalaZy Kuruluyor... Terminalinize devasa bir asalet geliyor.${NC}"
echo -e "${CYAN}   --------------------------------------------------------------------------------------------${NC}"

# Nala Kontrolü
if ! command -v nala &> /dev/null; then
    echo -e "${PURPLE}   🔮 Nala bulunamadı, sihirli paket yükleniyor...${NC}"
    sudo apt update && sudo apt install nala -y
else
    echo -e "${PURPLE}   ✨ Nala zaten sistemde mevcut.${NC}"
fi

# Alias Yapılandırması
echo -e "${PURPLE}   🪄  Kısayollar bashrc dosyasına mühürleniyor...${NC}"

# Blok Yönetimi ile Temizlik
sed -i '/# >>> NalaZy BEGIN >>>/,/# <<< NalaZy END <<</d' ~/.bashrc

cat << 'EOF' >> ~/.bashrc
# >>> NalaZy BEGIN >>>
# NalaZy Aliases
alias sudo='sudo '
alias nu='sudo nala update'
alias nug='sudo nala upgrade -y'
alias ni='sudo nala install'
alias nr='sudo nala remove'
alias ns='nala search'
alias nh='nala history'
alias nar='sudo nala autoremove -y'
# <<< NalaZy END <<<
EOF

echo -e "${CYAN}   --------------------------------------------------------------------------------------------${NC}"
echo -e "${L_PURPLE}   ✅ İşlem Tamam! NalaZy artık aktif.${NC}"
echo -e "${PURPLE}   👉 Terminali yenilemek için şu komutu yazın: ${NC}${CYAN}source ~/.bashrc${NC}"
echo -e "${CYAN}   --------------------------------------------------------------------------------------------${NC}"
