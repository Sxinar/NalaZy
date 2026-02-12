#!/bin/bash

# Renk Tanımlamaları
BLUE='\033[0;34m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
BOLD='\033[1m'
NC='\033[0m' 

clear

# NalaZy Logo
echo -e "${BLUE}"
echo "  _   _        _        ______     "
echo " | \ | |      | |      |___  /     "
echo " |  \| | __ _ | | __ _    / / _   _ "
echo " | . \` |/ _\` || |/ _\` |  / / | | | |"
echo " | |\  | (_| || | (_| | / /__| |_| |"
echo " |_| \_|\__,_||_|\__,_|/_____|\__, |"
echo "                               __/ |"
echo "                              |___/ "
echo -e "${NC}"
echo -e "${BOLD}${BLUE}  > NalaZy v1.0 | Paket Yönetim Arayüzü${NC}"
echo -e "${CYAN}  --------------------------------------------------${NC}"

# Nala Kontrolü ve Kurulumu
if ! command -v nala &> /dev/null; then
    echo -e "${BLUE}  [i] Nala bulunamadı, kurulum başlatılıyor...${NC}"
    sudo apt update && sudo apt install nala -y
else
    echo -e "${GREEN}  [✓] Nala sistemi zaten kurulu.${NC}"
fi

# Yapılandırma Güncelleme
echo -e "${BLUE}  [i] Kısayollar ve 'nelp' komutu yapılandırılıyor...${NC}"

# Eski NalaZy bloklarını temizle
sed -i '/# >>> NalaZy BEGIN >>>/,/# <<< NalaZy END <<</d' ~/.bashrc

# Yeni yapılandırmayı .bashrc dosyasına ekle
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

# NalaZy Yardım Rehberi
nelp() {
    echo -e "\033[1;34m📦 NalaZy Komut Listesi:\033[0m"
    echo -e "\033[0;36m--------------------------------------------------\033[0m"
    echo -e "\033[0;34mnu  \033[0m : Paket listesini güncelle (update)"
    echo -e "\033[0;34mnug \033[0m : Tüm paketleri yükselt (upgrade)"
    echo -e "\033[0;34mni  \033[0m : Yeni paket indir/kur (install)"
    echo -e "\033[0;34mnr  \033[0m : Paket kaldır (remove)"
    echo -e "\033[0;34mns  \033[0m : Paket ara (search)"
    echo -e "\033[0;34mnh  \033[0m : İşlem geçmişini gör (history)"
    echo -e "\033[0;34mnar \033[0m : Gereksiz paketleri temizle (autoremove)"
    echo -e "\033[0;36m--------------------------------------------------\033[0m"
    echo -e "Yardım için her zaman \033[1;36mnelp\033[0m yazabilirsiniz."
}
# <<< NalaZy END <<<
EOF

echo -e "${CYAN}  --------------------------------------------------${NC}"
echo -e "${GREEN}  [✓] Yapılandırma başarıyla tamamlandı.${NC}"
echo -e "${BLUE}  [i] Ayarların aktif olması için terminali yenileyin:${NC}"
echo -e "${BOLD}${CYAN}      source ~/.bashrc${NC}"
echo -e "${CYAN}  --------------------------------------------------${NC}"
echo -e "${GREEN}  🚀 Kurulum bitti! Yardım için '${BOLD}nelp${NC}${GREEN}' yazabilirsiniz.${NC}"
echo -e "${CYAN}  --------------------------------------------------${NC}"
