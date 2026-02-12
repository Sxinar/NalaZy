#!/bin/bash

# Renk Tanımlamaları
PURPLE='\033[0;35m'
L_PURPLE='\033[1;35m'
CYAN='\033[0;36m'
NC='\033[0m' # Renk Yok

clear

# ASCII Logo
echo -e "${L_PURPLE}"
echo "  _   _        _        ____________      "
echo " | \ | |      | |      |___  /\_  _|    "
echo " |  \| | __ _| | __ _    / /  | | _   _ "
echo " | . \` |/ _\` | |/ _\` |  / /   | || | | |"
echo " | |\  | (_| | | (_| | / /__ _| || |_| |"
echo " |_| \_|\__,_|_|\__,_|/_____|_____\__, |"
echo "                                   __/ |"
echo "                                  |___/ "
echo -e "${NC}"
echo -e "${PURPLE}💜 NalaZy Kuruluyor... Terminalinize asalet geliyor.${NC}"
echo -e "${CYAN}--------------------------------------------------------${NC}"

# Nala Kontrolü ve Kurulumu
if ! command -v nala &> /dev/null; then
    echo -e "${PURPLE}🔮 Nala bulunamadı, sihirli paket yükleniyor...${NC}"
    sudo apt update && sudo apt install nala -y
else
    echo -e "${PURPLE}✨ Nala zaten sistemde mevcut.${NC}"
fi

# Alias Yapılandırması (Gelişmiş Blok Temizleme)
echo -e "${PURPLE}🪄  Aliaslar bashrc dosyasına işleniyor...${NC}"

# Dosyada eski NalaZy bloğu varsa tamamen temizler
sed -i '/# >>> NalaZy BEGIN >>>/,/# <<< NalaZy END <<</d' ~/.bashrc

# Yeni bloğu temiz bir şekilde ekler
cat << 'EOF' >> ~/.bashrc

# >>> NalaZy BEGIN >>>
# NalaZy Kısayolları
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

echo -e "${CYAN}--------------------------------------------------------${NC}"
echo -e "${L_PURPLE}✅ İşlem Tamam! NalaZy artık aktif.${NC}"
echo -e "${PURPLE}👉 Değişiklikleri hemen görmek için şu komutu çalıştırın:${NC}"
echo -e "${CYAN}source ~/.bashrc${NC}"
echo -e "${CYAN}--------------------------------------------------------${NC}"
