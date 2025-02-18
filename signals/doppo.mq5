//+------------------------------------------------------------------+
//|                                                  doppo.mq5      |
//|                        QuantumTius Trading Bots                 |
//|                        Created by Don-Gio                       |
//|                                                                 |
//+------------------------------------------------------------------+
#property strict

// Paramètres de l'indicateur
input int MovingAveragePeriod = 14;   // Période de la moyenne mobile
input int RSIPeriod = 14;             // Période de l'indicateur RSI
input double OverboughtLevel = 70.0;  // Niveau de surachat RSI
input double OversoldLevel = 30.0;    // Niveau de survente RSI

// Déclaration des indicateurs
double MovingAveragePrev, MovingAverageCurrent;
double RSIValue;

// Variables de gestion des signaux
bool BuySignal = false;
bool SellSignal = false;

//+------------------------------------------------------------------+
//| Fonction d'initialisation de l'Expert Advisor                   |
//+------------------------------------------------------------------+
int OnInit()
  {
   // Initialisation des indicateurs
   Print("Baki - BTC/USD Signal Bot Initialisé !");
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Fonction de calcul des signaux de trading                        |
//+------------------------------------------------------------------+
void OnTick()
  {
   // Calcul de la Moyenne Mobile et du RSI
   MovingAveragePrev = iMA(Symbol(), 0, MovingAveragePeriod, 0, MODE_SMA, PRICE_CLOSE, 1);
   MovingAverageCurrent = iMA(Symbol(), 0, MovingAveragePeriod, 0, MODE_SMA, PRICE_CLOSE, 0);
   RSIValue = iRSI(Symbol(), 0, RSIPeriod, PRICE_CLOSE, 0);
   
   // Vérification des conditions d'achat
   if (MovingAverageCurrent > MovingAveragePrev && RSIValue < OversoldLevel)
     {
      BuySignal = true;
      SellSignal = false;
      Print("💥 Signal d'Achat détecté sur BTC/USD !");
     }
   // Vérification des conditions de vente
   else if (MovingAverageCurrent < MovingAveragePrev && RSIValue > OverboughtLevel)
     {
      BuySignal = false;
      SellSignal = true;
      Print("💥 Signal de Vente détecté sur BTC/USD !");
     }
   // Si aucune condition n'est remplie
   else
     {
      BuySignal = false;
      SellSignal = false;
     }
   
   // Exécution du signal d'achat
   if (BuySignal)
     {
      if (OrderSend(Symbol(), OP_BUY, 0.1, Ask, 2, 0, 0, "Baki - Buy Signal", 0, 0, clrGreen) < 0)
        {
         Print("Erreur d'ouverture de position d'achat : ", GetLastError());
        }
     }
   
   // Exécution du signal de vente
   if (SellSignal)
     {
      if (OrderSend(Symbol(), OP_SELL, 0.1, Bid, 2, 0, 0, "Baki - Sell Signal", 0, 0, clrRed) < 0)
        {
         Print("Erreur d'ouverture de position de vente : ", GetLastError());
        }
     }
  }

//+------------------------------------------------------------------+
//| Fonction de gestion des erreurs                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
   Print("Baki - BTC/USD Signal Bot arrêté. À la prochaine !");
  }

//+------------------------------------------------------------------+
//| Fonction principale du bot                                       |
//+------------------------------------------------------------------+
int OnTick()
  {
   // Vérification des signaux et exécution des ordres
   CheckSignals();
   return (0);
  }
