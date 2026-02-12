#!/bin/bash
echo "🦥 NalaZy Kuruluyor..."
if ! command -v nala &> /dev/null; then
    sudo apt update && sudo apt install nala -y
fi
echo "alias sudo='sudo '" >> ~/.bashrc
echo "alias nu='sudo nala update'" >> ~/.bashrc
echo "alias nug='sudo nala upgrade -y'" >> ~/.bashrc
echo "alias ni='sudo nala install'" >> ~/.bashrc
echo "alias nr='sudo nala remove'" >> ~/.bashrc
echo "alias ns='nala search'" >> ~/.bashrc
echo "alias nh='nala history'" >> ~/.bashrc
echo "alias nar='sudo nala autoremove -y'" >> ~/.bashrc
source ~/.bashrc
echo "✅ Kurulum tamamlandı! Terminali kapatıp açın veya 'source ~/.bashrc' yazın."
