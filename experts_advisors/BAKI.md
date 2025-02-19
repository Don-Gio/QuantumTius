# ⚡ Baki - XAU/USD Scalper Bot ⚡

**Baki Hanma** est un bot de trading automatisé conçu pour dominer le marché de l'or (XAU/USD). À l'instar du personnage Baki dans *Baki*, il utilise des stratégies puissantes et affûtées pour capturer des mouvements rapides du marché. Ce bot de scalping exploite des indicateurs techniques éprouvés tels que la **Moyenne Mobile (SMA)** et le **RSI (Relative Strength Index)** pour détecter les opportunités de trading à court terme, tout en maximisant les profits des petites fluctuations.

---

## 🧠 Description du bot <img src="../images/Baki_hanma.png" alt="Doppo Bot" width="150" height="150" align="right" style="border-radius: 50%;">

**Nom du Bot :** Baki Hanma  
**Type de Bot :** Scalper pour le trading XAU/USD (Or contre Dollar)  
**Technologie :** MQL5 (MetaTrader 5)


---

## ⚙️ Fonctionnalités

- **Scalping XAU/USD** : Profitez des petites fluctuations du marché de l'or.
- **Indicateurs utilisés** :
  - **Moyenne Mobile (SMA)** : Suivi de la tendance générale du marché.
  - **RSI** : Détecte les conditions de surachat et de survente.
- **Gestion des Risques** : Le bot applique un **Stop Loss** et un **Take Profit** fixes pour chaque position.
- **Prise de position** :
  - **Achat** : Lorsqu'une tendance haussière est confirmée et que le RSI est sous 30.
  - **Vente** : Lorsqu'une tendance baissière est confirmée et que le RSI est au-dessus de 70.

---

## 💻 Installation

### 🔧 Prérequis

- **MetaTrader 5** : Le bot est conçu pour la plateforme MetaTrader 5 (MT5).
- **Compte de trading** : Vous aurez besoin d'un compte de trading pour tester et exécuter le bot.
- **API d'accès aux données de marché** : Assurez-vous que votre broker fournit des données XAU/USD.

### 📥 Étapes d'installation

1. Téléchargez le fichier `XAU_USD_Scalper.mq5`.
2. Ouvrez **MetaEditor** dans MetaTrader 5.
3. Allez dans **Fichier > Ouvrir le dossier des données**.
4. Placez le fichier `XAU_USD_Scalper.mq5` dans le dossier **MQL5 > Experts**.
5. Compilez le fichier dans **MetaEditor** pour générer le fichier exécutable `.ex5`.
6. Ouvrez MetaTrader 5 et sélectionnez un graphique **XAU/USD**.
7. Faites glisser le bot "Baki" depuis le **Navigateur** vers le graphique **XAU/USD**.
8. Activez **Auto Trading** dans MetaTrader 5 pour permettre au bot de fonctionner.

---

## ⚙️ Configuration

Vous pouvez ajuster les paramètres du bot lorsque vous l'ajoutez au graphique :

- **MovingAveragePeriod** : Période de la Moyenne Mobile. Valeur par défaut : `14`.
- **RSIPeriod** : Période du RSI. Valeur par défaut : `14`.
- **LotSize** : Taille de la position (en lots). Valeur par défaut : `0.1`.
- **TakeProfit** : Distance du Take Profit en pips. Valeur par défaut : `10`.
- **StopLoss** : Distance du Stop Loss en pips. Valeur par défaut : `10`.

---

## 📈 Stratégie de Trading

- **Achat** : Lorsque la Moyenne Mobile montre une tendance haussière et que le RSI est inférieur à 30, un ordre d'achat est exécuté.
- **Vente** : Lorsque la Moyenne Mobile montre une tendance baissière et que le RSI est supérieur à 70, un ordre de vente est exécuté.
- **Stop Loss et Take Profit** : Les positions sont automatiquement fermées si le prix atteint les niveaux du **Stop Loss** ou du **Take Profit**.

---

## ⚠️ Avertissements

- **Risque de perte** : Comme toute stratégie de trading, il existe un risque de perte. Testez le bot sur un **compte démo** avant de l'utiliser sur un compte réel.
- **Pas de garantie de profit** : Les performances passées ne garantissent pas de futurs profits. Utilisez le bot avec prudence.
- **Suivi régulier** : Bien que le bot soit automatisé, il est recommandé de surveiller ses performances et de réajuster les paramètres si nécessaire.

---

## 📜 Licence

Ce bot est sous la **licence MIT**, ce qui vous permet de le modifier et de l'utiliser à vos propres fins, tant que vous incluez ce fichier de licence et mentionnez l'auteur.

---

## 👨‍💻 Auteurs

- **Créateur :** Don-Gio (Inspiration : Univers Baki)
- **Développeur :** Don-Gio

---

## 📞 Contact

Pour toute question ou problème, contactez l'équipe de développement via :

- **Email :** contact@topimaso.com  
- **Site Web** : [TopiMaso Studio](https://www.topimaso.com)

---

### **Que votre trading sur l'or soit aussi stratégique et impitoyable que Baki dans le ring !** 💥🥋
