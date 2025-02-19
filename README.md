# QuantumTius <img src="./images/quantum.png" alt="Doppo Bot" width="150" height="150" align="right" style="border-radius: 50%;">

**QuantumTius** est un dépôt centralisé pour les experts advisors (EAs), les signaux de trading, et autres outils créés avec le langage **MQL5** pour **MetaTrader 5 (MT5)**. Ce projet rassemble des stratégies automatisées, des scripts de trading et des solutions d'optimisation pour les traders utilisant MT5, avec un focus particulier sur le scalping des paires **BTC/USD** et **XAU/USD**.

## Objectif

L'objectif de **QuantumTius** est de fournir une bibliothèque complète d'outils de trading automatisé pour les utilisateurs de **MetaTrader 5 (MT5)**. Ce projet est destiné à la création, l'optimisation et le partage de **stratégies de trading algorithmiques**, avec un accent particulier sur les paires de devises populaires telles que **BTC/USD** et **XAU/USD**.

## Fonctionnalités

- **Experts Advisors (EAs)** : Scripts MQL5 pour des stratégies de trading automatisées, y compris des robots de scalping.
- **Signaux de Trading** : Configuration des signaux pour aider à prendre des décisions d'achat et de vente basées sur des analyses techniques avancées.
- **Optimisation de Stratégies** : Algorithmes optimisés pour des exécutions rapides et une gestion efficace des risques.
- **Backtesting** : Tester des stratégies sur des données historiques pour valider leur efficacité avant de les déployer en temps réel.
- **Scalping sur BTC/USD et XAU/USD** : Cibler les opportunités de trading à haute fréquence sur ces deux marchés populaires.
- **Scripts d'Analyse Technique** : Indicateurs et scripts pour aider à effectuer des analyses techniques avancées.

## Structure du Dépôt

Voici un aperçu de la structure de ce dépôt :
```
QuantumTius/ 
│ ├── experts_advisors/ # Contient les EAs pour MT5 
  │ ├── BTC_USD_Scalper.mq5 
  │ ├── XAU_USD_Scalper.mq5 
  │ └── ... 
│ ├── signaux/ # Contient les signaux de trading 
  │ ├── BTC_USD_Signal.mq5 
  │ ├── XAU_USD_Signal.mq5 
  │ └── ... 
│ ├── Indicators/ # Indicateurs techniques pour MT5 
  │ ├── EMA_Crossover.mq5 
  │ ├── RSI_Indicator.mq5 
  │ └── ... 
│ ├── scripts/ # Scripts d'analyse et d'optimisation 
  │ ├── Backtest_Script.mq5 
  │ └── ... 
│ └── README.md # Ce fichier
```

## Installation

1. Clonez ce dépôt dans votre répertoire local :
   ```bash
   git clone https://github.com/ton-utilisateur/QuantumTius.git
   ```

2. Copiez les fichiers `.mq5`dans le répertoire Experts de votre installation MetaTrader 5. Par défaut, ce répertoire se trouve à :
  ```sh
  C:\Program Files\MetaTrader 5\MQL5\Experts\
  ```

3. Ouvrez **MetaTrader 5** et dans le terminal, cliquez sur **Fichier > Ouvrir le répertoire des données** . Ensuite, allez dans le répertoire `MQL5` et copiez les fichiers dans le bon sous-répertoire (Experts, Indicateurs, etc.).

4. Compilez les fichiers `.mq5` via l'éditeur MetaEditor pour vous assurer qu'ils sont prêts à l'emploi.

5 .Lancez les EAs ou les signaux directement depuis MetaTrader 5 en ajoutant les outils sur les graphiques.

## Configuration
Les EA et signaux peuvent nécessiter des ajustements dans les paramètres pour fonctionner correctement avec votre compte et vos préférences de trading.

Exemple de configuration pour un EA de scalping BTC/USD :
```mql
input int    Slippage = 2;          // Slippage autorisé
input double LotSize = 0.1;         // Taille de la position
input int    TakeProfit = 50;       // Take profit en pips
input int    StopLoss = 30;         // Stop loss en pips
input string Symbol = "BTCUSD";     // Symbole de la paire
input int    TimeFrame = 5;         // Timeframe en minutes (5 minutes)
```

## Backtesting
Vous pouvez tester les stratégies de trading de **QuantumTius** sur des données historiques dans **MetaTrader 5** en utilisant le **Strategy Tester** . Cela vous permettra de valider l'efficacité des EA et d'ajuster les paramètres pour améliorer les performances.

## Contributeur
Les contributions sont les bienvenues ! Si vous avez des idées d'amélioration, des bugs à signaler ou des fonctionnalités à ajouter, veuillez ouvrir un issue ou soumettre une pull request .

## Comment contribuer :
* Forkez le projet.
* Créez une nouvelle branche pour votre fonctionnalité ou correction de bug.
* Faites vos modifications et soumettez une pull request.
## Licence
Ce projet est sous licence MIT . Vous êtes libre d'utiliser et de modifier ce code, mais n'oubliez pas de préciser l'auteur original.
