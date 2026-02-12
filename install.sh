#!/bin/bash

# Renk Tanımlamaları
PURPLE='\033[0;35m'
L_PURPLE='\033[1;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' 

clear

# NalaZy Logo (Mor Tonları)
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
    echo -e "${PURPLE}  [i] Nala bulunamadı, kurulum başlatılıyor...${NC}"
    sudo apt update && sudo apt install nala -y
else
    echo -e "${PURPLE}  [✓] Nala sistemi zaten onurlandırıyor.${NC}"
fi

# Yapılandırma
echo -e "${PURPLE}  [i] Kısayollar ve 'nelp' komutu yapılandırılıyor...${NC}"

# Eski blokları temizle
sed -i '/# >>> NalaZy BEGIN >>>/,/# <<< NalaZy END <<</d' ~/.bashrc

# .bashrc güncelleme
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
    echo -e "\033[1;35m🔮 NalaZy Komut Listesi:\033[0m"
    echo -e "\033[0;36m--------------------------------------------------\033[0m"
    echo -e "\033[0;35mnu  \033[0m : Paket listesini güncelle (update)"
    echo -e "\033[0;35mnug \033[0m : Tüm paketleri yükselt (upgrade)"
    echo -e "\033[0;35mni  \033[0m : Yeni paket indir/kur (install)"
    echo -e "\033[0;35mnr  \033[0m : Paket kaldır (remove)"
    echo -e "\033[0;35mns  \033[0m : Paket ara (search)"
    echo -e "\033[0;35mnh  \033[0m : İşlem geçmişini gör (history)"
    echo -e "\033[0;35mnar \033[0m : Gereksiz paketleri temizle (autoremove)"
    echo -e "\033[0;36m--------------------------------------------------\033[0m"
    echo -e "Yardım için her zaman \033[1;36mnelp\033[0m yazabilirsiniz."
}
# <<< NalaZy END <<<
EOF

echo -e "${CYAN}  --------------------------------------------------${NC}"
echo -e "${L_PURPLE}  [✓] Yapılandırma başarıyla tamamlandı.${NC}"
echo -e "${PURPLE}  [i] Ayarların aktif olması için şu komutu yazın:${NC}"
echo -e "${BOLD}${CYAN}      source ~/.bashrc${NC}"
echo -e "${CYAN}  --------------------------------------------------${NC}"
echo -e "${L_PURPLE}  🚀 Kurulum bitti! Yardım için '${BOLD}nelp${NC}${L_PURPLE}' yazabilirsiniz.${NC}"
echo -e "${CYAN}  --------------------------------------------------${NC}"
