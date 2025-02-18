# Baki - XAU/USD Scalper Bot

**Nom du Bot :** Baki Hanma 
**Type de Bot :** Scalper pour le trading XAU/USD (Or contre Dollar)  
**Technologie :** MQL5 (MetaTrader 5)

---

## Description

Baki est un bot de trading automatisé conçu spécifiquement pour le marché de l'or (XAU/USD). Il utilise des indicateurs techniques éprouvés comme la **Moyenne Mobile (SMA)** et le **Relative Strength Index (RSI)** pour effectuer des trades à court terme, en profitant des petites fluctuations de prix. Ce bot est une incarnation de la puissance et de la stratégie, tout comme le personnage Baki dans l'univers *Baki*, prêt à dominer le marché de l'or.

---

## Fonctionnalités

- **Scalping XAU/USD** : Le bot cherche à profiter de petits mouvements sur le marché de l'or.
- **Indicateurs utilisés** :
  - **Moyenne Mobile (SMA)** : Identifie la tendance générale du marché.
  - **RSI** : Détecte les conditions de surachat/survente.
- **Gestion des Risques** : Le bot utilise un **Stop Loss** et un **Take Profit** fixes pour chaque position.
- **Prise de position** :
  - **Achat** : Lorsque la moyenne mobile indique une tendance haussière et que le RSI est sous 30.
  - **Vente** : Lorsque la moyenne mobile indique une tendance baissière et que le RSI est au-dessus de 70.

---

## Installation

### Prérequis

- **MetaTrader 5** : Ce bot est conçu pour être utilisé sur la plateforme MetaTrader 5 (MT5).
- **Compte de trading** : Vous devez disposer d'un compte de trading pour tester et exécuter le bot.
- **API d'accès aux données de marché** : Assurez-vous d'avoir accès aux données de marché XAU/USD via votre broker.

### Étapes d'installation

1. Téléchargez le fichier `XAU_USD_Scalper.mq5`.
2. Ouvrez **MetaEditor** dans MetaTrader 5.
3. Allez dans **Fichier > Ouvrir le dossier des données**.
4. Placez le fichier `XAU_USD_Scalper.mq5` dans le dossier **MQL5 > Experts**.
5. Compilez le fichier dans MetaEditor pour générer l'EX5.
6. Dans MetaTrader 5, ouvrez le graphique XAU/USD.
7. Faites glisser le bot "Baki" depuis le **Navigateur** vers le graphique XAU/USD.
8. Assurez-vous que l'option **Auto Trading** est activée dans la plateforme.

---

## Configuration

Vous pouvez ajuster les paramètres du bot lors de l'ajout du bot à un graphique :

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

- **Risque de perte** : Comme toute stratégie de trading, il existe un risque de perte. Testez le bot sur un **compte démo** avant de l'utiliser sur un compte réel.
- **Pas de garantie de profit** : Les résultats passés ne garantissent pas de futurs profits.
- **Suivi régulier** : Bien que le bot soit automatisé, il est conseillé de suivre ses performances et d'ajuster les paramètres si nécessaire.

---

## Licence

Ce bot est sous la **licence MIT**, ce qui vous permet de le modifier et de l'utiliser à vos propres fins, tant que vous incluez ce fichier de licence et la mention de l'auteur.

---

## Auteurs

- **Créateur :** Don-Gio (Inspiration : Univers Baki)
- **Développeur :** Don-Gio

---

## Contact

Pour toute question ou problème, contactez l'équipe de développement via :

- **Email :** contact@topimaso.com
- **Site Web :** [TopiMaso Studio](https://www.topimaso.com)

