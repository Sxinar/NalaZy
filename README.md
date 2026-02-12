# 🦥 NalaZy: The Ultimate Shortcut Suite for Nala

[![GitHub stars](https://img.shields.io/github/stars/Sxinar/NalaZy?style=for-the-badge)](https://github.com/Sxinar/NalaZy/stargazers)
[![GitHub license](https://img.shields.io/github/license/Sxinar/NalaZy?style=for-the-badge)](https://github.com/Sxinar/NalaZy/blob/main/LICENSE)
[![Bash Shell](https://img.shields.io/badge/Shell-Bash%20%2F%20Zsh-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)

**NalaZy**, Linux terminalinde vakit kaybetmek istemeyen, verimliliğe odaklanan kullanıcılar için geliştirilmiş akıllı bir takma ad (alias) koleksiyonudur. Uzun ve sıkıcı paket yönetimi komutlarını sadece 2-3 tuş vuruşuna indirir.

---

## 📑 İçindekiler / Table of Contents
* [Neden NalaZy?](#-neden-nalazy)
* [Özellikler / Features](#-özellikler--features)
* [Kısayol Listesi / Alias List](#-kısayol-listesi--alias-list)
* [Kurulum / Installation](#-kurulum--installation)
* [Kaldırma / Uninstall](#-kaldırma--uninstall)
* [Katkıda Bulunma / Contributing](#-katkıda-bulunma--contributing)

---

## 🚀 Neden NalaZy?
Standart `apt` paket yöneticisi işlevsel olsa da yavaştır ve çıktıları karmaşıktır. `Nala` ise bu süreci hızlandırır ve güzelleştirir. **NalaZy**, bu hızı kullanıcı alışkanlığıyla birleştirerek:
- Her komutun başına `sudo` yazma derdini bitirir.
- Komut karmaşasını ortadan kaldırır.
- `nala`nın tüm gücünü (history, parallel downloads) parmaklarınızın ucuna getirir.

---

## ✨ Özellikler / Features
- ✅ **Otomatik Sudo:** Alias'lar akıllı `sudo` desteğiyle gelir.
- ✅ **Hızlı Kurulum:** Tek komutla tüm sistem hazır hale gelir.
- ✅ **Hafif:** Sisteminize ağır scriptler eklemez, sadece `.bashrc` veya `.bash_aliases` dosyanızı yapılandırır.
- ✅ **Görsel Başarı:** Nala'nın sunduğu zengin ve renkli arayüzü tam verimle kullanır.

---

## 🛠️ Kısayol Listesi / Alias List

| Komut | Karşılığı (Equivalent) | Açıklama (Description) |
| :--- | :--- | :--- |
| `nu` | `sudo nala update` | Paket listelerini günceller / Updates lists |
| `nug` | `sudo nala upgrade -y` | Sistemi yükseltir / Upgrades system |
| `ni` | `sudo nala install` | Paket kurar / Installs package |
| `nr` | `sudo nala remove` | Paket kaldırır / Removes package |
| `ns` | `nala search` | Paket arar / Searches repository |
| `nh` | `nala history` | İşlem geçmişi / Transaction history |
| `nar` | `sudo nala autoremove` | Gereksizleri siler / Cleans dependencies |

---

## 📥 Kurulum / Installation

Projeyi yerel bilgisayarınıza çekin ve kurulum scriptini çalıştırın:

```bash
git clone [https://github.com/Sxinar/NalaZy.git](https://github.com/Sxinar/NalaZy.git)
cd NalaZy
chmod +x install.sh
./install.sh
