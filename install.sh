#!/bin/bash

# Renk Tanımlamaları (Script İçin)
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

# Alias ve Fonksiyon Yapılandırması
echo -e "${PURPLE}  🪄  Kısayollar ve 'nelp' komutu mühürleniyor...${NC}"

# Blok Yönetimi ile Temizlik (Eski NalaZy bloklarını temizler)
sed -i '/# >>> NalaZy BEGIN >>>/,/# <<< NalaZy END <<</d' ~/.bashrc

# .bashrc dosyasına yeni bloğu ekle
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

# NalaZy Yardım Komutu
nelp() {
    echo -e "\033[1;35m🔮 NalaZy Komut Rehberi:\033[0m"
    echo -e "\033[0;36m--------------------------------------------------\033[0m"
    echo -e "\033[0;35mnu  \033[0m : Depoları Güncelle (update)"
    echo -e "\033[0;35mnug \033[0m : Sistemi Yükselt (upgrade)"
    echo -e "\033[0;35mni  \033[0m : Paket Kur (install)"
    echo -e "\033[0;35mnr  \033[0m : Paket Kaldır (remove)"
    echo -e "\033[0;35mns  \033[0m : Paket Ara (search)"
    echo -e "\033[0;35mnh  \033[0m : İşlem Geçmişi (history)"
    echo -e "\033[0;35mnar \033[0m : Gereksizleri Temizle (autoremove)"
    echo -e "\033[0;36m--------------------------------------------------\033[0m"
}
# <<< NalaZy END <<<
EOF

echo -e "${CYAN}  --------------------------------------------------${NC}"
echo -e "${L_PURPLE}  ✅ İşlem Tamam! NalaZy artık aktif.${NC}"
echo -e "${PURPLE}  👉 Kullanmak için terminali kapatıp açın veya şu komutu çalıştırın:${NC}"
echo -e "${CYAN}     source ~/.bashrc${NC}"
echo -e "${CYAN}  --------------------------------------------------${NC}"
