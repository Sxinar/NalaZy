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

```

Kurulum bittikten sonra değişikliklerin aktif olması için terminali kapatıp açın veya şu komutu yazın:
`source ~/.bashrc`

---

## 🗑️ Kaldırma / Uninstall

Eğer NalaZy kısayollarını kaldırmak isterseniz, `~/.bashrc` dosyanızın en altındaki NalaZy bölümlerini silmeniz yeterlidir.

---

## 🤝 Katkıda Bulunma / Contributing

Geliştirme önerileriniz mi var? Harika!

1. Bu depoyu çatallayın (Fork).
2. Yeni bir özellik dalı oluşturun (`git checkout -b feature/yeniOzellik`).
3. Değişikliklerinizi kaydedin (`git commit -m 'Yeni özellik eklendi'`).
4. Dalınıza iteleyin (`git push origin feature/yeniOzellik`).
5. Bir Çekme İsteği (Pull Request) açın.


## ❓ Sıkça Sorulan Sorular / FAQ

<details>
<summary><b>TR: NalaZy sistemime zarar verir mi?</b></summary>
Hayır. NalaZy sadece terminal kısayolları (alias) oluşturur. Sistem dosyalarınızı değiştirmez, sadece uzun komutları sizin yerinize otomatikleştirir.
</details>

<details>
<summary><b>EN: Can NalaZy damage my system?</b></summary>
No. NalaZy only creates terminal aliases. It doesn't modify system files; it just automates long commands for you.
</details>

<details>
<summary><b>TR: "Command not found" hatası alıyorum, ne yapmalıyım?</b></summary>
Kurulumdan sonra terminalinizi kapatıp açtığınızdan veya `source ~/.bashrc` komutunu çalıştırdığınızdan emin olun.
</details>

<details>
<summary><b>EN: I get a "Command not found" error, what should I do?</b></summary>
Make sure you restarted your terminal or ran the `source ~/.bashrc` command after installation.
</details>

<details>
<summary><b>TR: Standart apt komutlarını hala kullanabilir miyim?</b></summary>
Evet, NalaZy `apt` komutlarını silmez veya engellemez. İstediğiniz zaman klasik `sudo apt update` gibi komutları kullanmaya devam edebilirsiniz.
</details>

<details>
<summary><b>EN: Can I still use standard apt commands?</b></summary>
Yes, NalaZy does not delete or block `apt` commands. You can continue to use classic commands like `sudo apt update` whenever you want.
</details>

<details>
<summary><b>TR: Nala'yı neden manuel kurmadım?</b></summary>
NalaZy'nin `install.sh` scripti, sisteminizde Nala yüklü değilse bunu tespit eder ve sizin yerinize otomatik olarak kurar. Sizin ek bir işlem yapmanıza gerek yoktur.
</details>

<details>
<summary><b>EN: Why didn't I install Nala manually?</b></summary>
The `install.sh` script of NalaZy detects if Nala is not installed on your system and installs it automatically for you. No extra steps are needed.
</details>


## 📜 Lisans / License
Bu proje [MIT](LICENSE) lisansı altında korunmaktadır. Detaylar için `LICENSE` dosyasına göz atabilirsiniz.
---

**⭐ Eğer bu projeyi beğendiyseniz yıldız vermeyi unutmayın!** Developed by [Sxinar](https://github.com/Sxinar) with ❤️
