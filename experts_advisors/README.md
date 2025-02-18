# Yuujirou - BTC/USD Scalper Bot

**Nom du Bot :** Yujiro 
**Type de Bot :** Scalper pour le trading BTC/USD  
**Technologie :** MQL5 (MetaTrader 5)

---

## Description

Yujiro est un bot de trading automatisé développé pour le marché des cryptomonnaies, en particulier pour le trading de BTC/USD. 
Ce scalper utilise des indicateurs techniques populaires comme la **Moyenne Mobile (SMA)** et le **Relative Strength Index (RSI)** pour ouvrir et fermer des positions à court terme. 
L'objectif est de tirer parti des petites fluctuations de prix tout en appliquant une gestion des risques avec un **Take Profit** et un **Stop Loss**.

Inspiré par l'univers de l'anime *Baki*, le bot est conçu pour être un combattant impitoyable sur le marché, prenant des décisions précises et calculées pour maximiser les profits tout en minimisant les risques.

---

## Fonctionnalités

- **Scalping BTC/USD** : Le bot prend des positions sur de petits mouvements de prix.
- **Indicateurs utilisés** : 
  - **Moyenne Mobile (SMA)** : Identifie les tendances du marché.
  - **RSI** : Détecte les conditions de surachat/survente.
- **Gestion des Risques** : Le bot utilise un **Stop Loss** et un **Take Profit** fixes pour chaque position.
- **Prise de position** : 
  - **Achat** : Lorsque la moyenne mobile est en tendance haussière et que le RSI est sous 30.
  - **Vente** : Lorsque la moyenne mobile est en tendance baissière et que le RSI est au-dessus de 70.

---

## Installation

### Prérequis

- **MetaTrader 5** : Ce bot est conçu pour être utilisé sur la plateforme MetaTrader 5 (MT5).
- **Compte de trading** : Assurez-vous de disposer d'un compte de trading pour tester et exécuter le bot.
- **API d'accès aux données de marché** : Vérifiez que vous avez accès aux données de marché BTC/USD via votre broker.

### Étapes d'installation

1. Téléchargez le fichier `BTC_USD_Scalper.mq5`.
2. Ouvrez **MetaEditor** dans MetaTrader 5.
3. Allez dans **Fichier > Ouvrir le dossier des données**.
4. Placez le fichier `BTC_USD_Scalper.mq5` dans le dossier **MQL5 > Experts**.
5. Compilez le fichier dans MetaEditor pour créer l'EX5.
6. Dans MetaTrader 5, ouvrez le graphique BTC/USD.
7. Faites glisser le bot "Yuujirou" depuis le **Navigateur** vers le graphique BTC/USD.
8. Assurez-vous que l'option **Auto Trading** est activée dans la plateforme.

---

## Configuration

Vous pouvez ajuster les paramètres du bot dans le fichier source ou lors de l'ajout du bot à un graphique :

- **MovingAveragePeriod** : Période de la moyenne mobile. Valeur par défaut : `14`.
- **RSIPeriod** : Période de l'indicateur RSI. Valeur par défaut : `14`.
- **LotSize** : Taille de la position (en lots). Valeur par défaut : `0.1`.
- **TakeProfit** : Take Profit en pips. Valeur par défaut : `10`.
- **StopLoss** : Stop Loss en pips. Valeur par défaut : `10`.

---

## Stratégie de Trading

- **Achat** : Lorsque la moyenne mobile est en tendance haussière et que le RSI est sous 30, un ordre d'achat est exécuté.
- **Vente** : Lorsque la moyenne mobile est en tendance baissière et que le RSI est supérieur à 70, un ordre de vente est exécuté.
- **Stop Loss et Take Profit** : Les positions sont fermées automatiquement si le prix atteint l'un des niveaux définis par le Stop Loss ou le Take Profit.

---

## Avertissements

- **Risque de perte** : Comme pour toute stratégie de trading, il existe un risque de perte. Testez le bot dans un environnement de **compte démo** avant d'utiliser de l'argent réel.
- **Pas de garantie de profit** : Le bot suit une stratégie algorithmique, mais les résultats passés ne garantissent pas des performances futures.
- **Suivi régulier** : Bien que ce bot soit automatisé, il est recommandé de suivre de près ses performances et d'ajuster les paramètres si nécessaire.

---

## Licence

Ce bot est sous la **licence MIT**, ce qui signifie que vous pouvez le modifier et l'utiliser à vos propres fins, tant que vous incluez ce fichier de licence et la mention de l'auteur.

---

## Auteurs

- **Créateur :** Don-Gio (Inspiration : Univers Baki)
- **Développeur :** Don-Gio

---

## Contact

Pour toute question ou problème, n'hésitez pas à contacter l'équipe de développement via :

- **Email :** contact@topimaso.com
- **Site Web :** [TopiMaso Studio](https://www.topimaso.com)

