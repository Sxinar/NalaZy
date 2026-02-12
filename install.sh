#!/bin/bash

# Renk Tanımlamaları
PURPLE='\033[0;35m'
L_PURPLE='\033[1;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' 

clear

# Optimize Edilmiş NalaZy Logo
echo -e "${L_PURPLE}"
echo "  _   _        _        ______     "
echo " | \ | |      | |      |___  /     "
echo " |  \| | __ _ | | __ _    / / _   _ "
echo " | . \` |/ _\` || |/ _\` |  / / | | | |"
echo " | |\  | (_| || | (_| | / /__| |_| |"
echo " |_| \_|\__,_||_|\__,_|/_____|\__, |"
echo "                               __/ |"
echo "                              |___/ "
echo -e "${NC}"
echo -e "${BOLD}${PURPLE}  > NalaZy v1.0 | Terminal Asaleti${NC}"
echo -e "${CYAN}  --------------------------------------------------${NC}"

# Nala Kontrolü
if ! command -v nala &> /dev/null; then
    echo -e "${PURPLE}  🔮 Nala bulunamadı, sihirli paket yükleniyor...${NC}"
    sudo apt update && sudo apt install nala -y
else
    echo -e "${PURPLE}  ✨ Nala sistemi zaten onurlandırıyor.${NC}"
fi

# Alias Yapılandırması
echo -e "${PURPLE}  🪄  Kısayollar bashrc dosyasına mühürleniyor...${NC}"

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

echo -e "${CYAN}  --------------------------------------------------${NC}"
echo -e "${L_PURPLE}  ✅ İşlem Tamam! NalaZy artık aktif.${NC}"
echo -e "${PURPLE}  👉 Terminali yenilemek için: ${NC}${CYAN}source ~/.bashrc${NC}"
echo -e "${CYAN}  --------------------------------------------------${NC}"
