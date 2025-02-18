# ⚡ **Yujiro** - BTC/USD Scalper Bot ⚡

**Nom du Bot :** Yujiro Hanma  
**Type de Bot :** Scalper pour le trading BTC/USD  
**Technologie :** MQL5 (MetaTrader 5)

---

## 🧠 **Description du Bot**

**Yujiro** est un bot de trading automatisé conçu spécifiquement pour le marché des cryptomonnaies, en particulier pour le **trading de BTC/USD**. Ce scalper utilise des indicateurs techniques éprouvés tels que la **Moyenne Mobile (SMA)** et le **Relative Strength Index (RSI)** pour détecter les meilleures opportunités de trading et exécuter des transactions à court terme.

Inspiré de l'ultime combattant **Yujiro Hanma** de *Baki*, ce bot applique une stratégie implacable, prenant des décisions rapides et calculées pour exploiter les petites fluctuations de prix tout en limitant les risques grâce à une gestion efficace du **Take Profit** et du **Stop Loss**.

---

## ⚙️ **Fonctionnalités**

- **Scalping BTC/USD** : Prise de positions sur de petits mouvements de prix sur la paire BTC/USD.
- **Indicateurs utilisés** :
  - **Moyenne Mobile (SMA)** : Permet de détecter les tendances du marché.
  - **RSI (Relative Strength Index)** : Permet d'identifier les conditions de surachat et de survente.
- **Gestion des risques** : Utilisation de **Stop Loss** et **Take Profit** fixes pour chaque position afin de protéger le capital.
- **Prise de position** :
  - **Achat** : Lorsque la moyenne mobile est en tendance haussière et que le RSI est sous 30 (survente).
  - **Vente** : Lorsque la moyenne mobile est en tendance baissière et que le RSI est au-dessus de 70 (surachat).

---

## 🛠️ **Installation**

### **Prérequis** :
- **MetaTrader 5 (MT5)** : Ce bot est conçu pour être utilisé sur la plateforme MetaTrader 5.
- **Compte de trading** : Vous devez disposer d'un compte de trading pour tester et exécuter le bot.
- **API d'accès aux données de marché** : Assurez-vous d'avoir accès aux données de marché BTC/USD via votre broker.

### **Étapes d'installation** :

1. Téléchargez le fichier `BTC_USD_Scalper.mq5`.
2. Ouvrez **MetaEditor** depuis MetaTrader 5.
3. Allez dans **Fichier > Ouvrir le dossier des données**.
4. Placez le fichier `BTC_USD_Scalper.mq5` dans le dossier **MQL5 > Experts**.
5. Compilez le fichier dans MetaEditor pour générer le fichier EX5.
6. Ouvrez un graphique **BTC/USD** dans MetaTrader 5.
7. Faites glisser le bot "Yuujirou" depuis le **Navigateur** sur le graphique BTC/USD.
8. Activez l'option **Auto Trading** dans la plateforme MetaTrader 5.

---

## ⚙️ **Configuration**

Vous pouvez ajuster les paramètres du bot lors de son ajout à un graphique ou directement dans le fichier source. Voici les paramètres personnalisables par défaut :

- **MovingAveragePeriod** : Période de la moyenne mobile. Valeur par défaut : `14`.
- **RSIPeriod** : Période de l'indicateur RSI. Valeur par défaut : `14`.
- **LotSize** : Taille de la position (en lots). Valeur par défaut : `0.1`.
- **TakeProfit** : Take Profit en pips. Valeur par défaut : `10`.
- **StopLoss** : Stop Loss en pips. Valeur par défaut : `10`.

---

## 🛑 **Stratégie de Trading**

- **Signal d'Achat** : Lorsque la moyenne mobile est en tendance haussière et que le RSI est inférieur à 30, un ordre d'achat est exécuté.
- **Signal de Vente** : Lorsque la moyenne mobile est en tendance baissière et que le RSI est supérieur à 70, un ordre de vente est exécuté.
- **Stop Loss et Take Profit** : Les positions sont fermées automatiquement si le prix atteint l'un des niveaux définis par le Stop Loss ou le Take Profit.

---

## ⚠️ **Avertissements**

- **Risque de perte** : Comme pour toute stratégie de trading, il existe un risque de perte. Testez d'abord le bot dans un environnement de **compte démo** avant de l'utiliser avec de l'argent réel.
- **Pas de garantie de profit** : Ce bot suit une stratégie algorithmique, mais les résultats passés ne garantissent pas des performances futures.
- **Suivi régulier** : Bien que le bot soit automatisé, il est important de suivre régulièrement ses performances et d'ajuster les paramètres si nécessaire.

---

## 📜 **Licence**

Ce bot est sous la **licence MIT**, ce qui vous permet de le modifier et de l'utiliser à vos propres fins, tout en incluant ce fichier de licence et la mention de l'auteur.

---

## 👨‍💻 **Auteurs**

- **Créateur** : Don-Gio (Inspiration : Univers *Baki*)
- **Développeur** : Don-Gio

---

## 📞 **Contact**

Si vous avez des questions ou avez besoin de support, n'hésitez pas à contacter l'équipe de développement via :

- **Email** : contact@topimaso.com
- **Site Web** : [TopiMaso Studio](https://www.topimaso.com)

---

**Que le trading soit aussi impitoyable et précis que Yuujirou Hanma sur le ring !** 💥
