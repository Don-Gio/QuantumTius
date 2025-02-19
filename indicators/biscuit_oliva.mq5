//+------------------------------------------------------------------+
//| Scalping BTC/USD - EMA & RSI Indicator for MetaTrader 5          |
//|                                                                  |
//| Cet indicateur est conçu pour le scalping sur BTC/USD en utilisant|
//| la Moyenne Mobile Exponentielle (EMA) et le Relative Strength     |
//| Index (RSI).                                                     |
//+------------------------------------------------------------------+
#property strict
#property indicator_separate_window
#property indicator_buffers 2
#property indicator_color1 Blue  // Pour le RSI
#property indicator_color2 Red   // Pour la ligne de surachat/survente RSI

// Paramètres d'entrée
input int EMA_Period = 14;  // Période de la Moyenne Mobile Exponentielle (EMA)
input int RSI_Period = 14;  // Période du Relative Strength Index (RSI)
input double RSI_Overbought = 70;  // Seuil de surachat pour le RSI
input double RSI_Oversold = 30;   // Seuil de survente pour le RSI

// Buffers pour les données des indicateurs
double EMA_Buffer[];
double RSI_Buffer[];

//+------------------------------------------------------------------+
//| Initialisation de l'indicateur                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
   // Initialiser les buffers
   SetIndexBuffer(0, EMA_Buffer);
   SetIndexBuffer(1, RSI_Buffer);
   
   // Définir le style des indicateurs
   SetIndexStyle(0, DRAW_LINE);
   SetIndexStyle(1, DRAW_LINE);
   
   // Nom de l'indicateur dans l'éditeur graphique
   IndicatorShortName("Scalping BTC/USD - EMA & RSI");

   // Retourner INIT_SUCCEEDED si l'initialisation réussit
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Calcul des valeurs des indicateurs                               |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
   // Calculer les valeurs de l'EMA
   int begin = rates_total - prev_calculated;
   for (int i = begin; i >= 0; i--)
     {
      EMA_Buffer[i] = iMA(NULL, 0, EMA_Period, 0, MODE_EMA, PRICE_CLOSE, i);
     }
   
   // Calculer les valeurs du RSI
   for (int i = begin; i >= 0; i--)
     {
      RSI_Buffer[i] = iRSI(NULL, 0, RSI_Period, PRICE_CLOSE, i);
     }
   
   return(rates_total);
  }